#include <iostream>
#include <thread>
#include <random>
#include <chrono>
#include <atomic>

#include "metrics/MetricsRegistry.h"
#include "metrics/MetricsReporter.h"
#include "metrics/types/Gauge.h"
#include "metrics/types/Counter.h"

void simulate_cpu_load(const std::shared_ptr<metrics::Gauge>& cpu_gauge, std::atomic<bool>& stop){
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<> dis(0.5, 2.5);
    
    while(!stop.load()){
        cpu_gauge->set(dis(gen));
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }
}

void simulate_http_requests(const std::shared_ptr<metrics::Counter>& rps_counter, std::atomic<bool>& stop){
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(11, 55);

    while(!stop.load()){
        rps_counter->increment();
        std::this_thread::sleep_for(std::chrono::milliseconds(dis(gen)));
    }
}

int main(){
    const std::string filename = "metrics.log";
    std::cout << "Start metrics collection!" << std::endl;
    std::cout << "Output written to: " << filename << std::endl;

    try {
        auto& registry = metrics::MetricsRegistry::instance();
        auto cpu_util_gauge = std::make_shared<metrics::Gauge>("CPU Util");
        auto http_rps_counter = std::make_shared<metrics::Counter>("HTTP RPS");

        registry.registerMetric(cpu_util_gauge);
        registry.registerMetric(http_rps_counter);

        auto writer = std::make_unique<metrics::FileWriter>(filename);
        metrics::MetricsReporter reporter(registry, std::move(writer), std::chrono::seconds(1));

        reporter.start();

        std::atomic<bool> stop_signal{false};
        std::vector<std::thread> worker_threads;

        worker_threads.emplace_back(simulate_cpu_load, cpu_util_gauge, std::ref(stop_signal));
        for(int i = 0; i < 4; ++i){
            worker_threads.emplace_back(simulate_http_requests, http_rps_counter, std::ref(stop_signal));
        }

        std::cout << "Simulate run for 10 sec" << std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(10));

        std::cout << "Stop simulation" << std::endl;
        stop_signal.store(true);
        for(auto& t : worker_threads){
            if(t.joinable()) t.join();
        }

        reporter.stop();
        std::cout << "Metrics collection stopped" << std::endl;

    } catch (const std::exception& e){
        std::cerr << "An error occurred: " << e.what() << std::endl;
        return 1;
    }

    return 0;
}
