#pragma once

#include "MetricsRegistry.h"
#include "writers/FileWriter.h"
#include <thread>
#include <chrono>
#include <atomic>
#include <condition_variable>

namespace metrics{

class MetricsReporter{
    private:
        void run();
        MetricsRegistry& m_registry;
        std::unique_ptr<FileWriter> m_writer;
        std::chrono::seconds m_interval;
        std::atomic<bool> m_stop_flag{false};
        std::thread m_thread;
        std::mutex m_mutex;
        std::condition_variable m_cv;


    public:
        MetricsReporter(
            MetricsRegistry& registry,
            std::unique_ptr<FileWriter> writer,
            std::chrono::seconds interval
        );
        ~MetricsReporter();

        void start();
        void stop();


};

}