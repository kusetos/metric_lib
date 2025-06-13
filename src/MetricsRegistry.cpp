#include "metrics/MetricsRegistry.h"
#include <memory>

namespace metrics
{

MetricsRegistry& MetricsRegistry::instance(){
    static MetricsRegistry registry;
    return registry;
}

void MetricsRegistry::registerMetric(const std::shared_ptr<IMetric>& metric){
    std::lock_guard<std::mutex> lock(m_mutex);
    m_metrics.push_back(metric);
}

std::vector<MetricSnapshot> MetricsRegistry::collectAll(){
    std::vector<MetricSnapshot> snapshots;
    std::lock_guard<std::mutex> lock(m_mutex);

    snapshots.reserve(m_metrics.size());

    for (const auto& metric : m_metrics){
        if(metric){
            snapshots.push_back({metric -> getName(), metric->getValueAndReset()});
        }
    }
    return snapshots;
}

} // namespace metrics{}
