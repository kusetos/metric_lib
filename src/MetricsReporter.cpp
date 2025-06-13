#include "metrics/MetricsReporter.h"
namespace metrics
{

MetricsReporter::MetricsReporter(
    MetricsRegistry& registry,
    std::unique_ptr<FileWriter> writer,
    std::chrono::seconds interval
) : m_registry(registry), m_writer(std::move(writer)), m_interval(interval) {}

MetricsReporter::~MetricsReporter(){
    if(m_thread.joinable()){
        stop();
    }
}

void MetricsReporter::start(){
    m_thread = std::thread(&MetricsReporter::run, this);
}

void MetricsReporter::stop(){
    m_stop_flag.store(true);
    m_cv.notify_one();
    if(m_thread.joinable()){
        m_thread.join();
    }
}

void MetricsReporter::run(){
    while(!m_stop_flag.load()){
        std::unique_lock<std::mutex> lock(m_mutex);
        if(m_cv.wait_for(lock, m_interval, [this] {return m_stop_flag.load();})){
            break;
        }
        auto snapshots = m_registry.collectAll();

        if(m_writer){
            m_writer->write(snapshots);
        }
    }
}

} // namespace metrics
