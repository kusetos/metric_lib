#pragma once

#include "IMetric.h"
#include <vector>
#include <memory>
#include <mutex>

namespace metrics{

struct MetricSnapshot{
    std::string name;
    std::any value;
};

class MetricsRegistry{

    private:
        MetricsRegistry() = default;
        std::mutex m_mutex;
        std::vector<std::shared_ptr<IMetric>> m_metrics;

    public:
        MetricsRegistry(const MetricsRegistry&) = delete;
        MetricsRegistry& operator=(const MetricsRegistry&) = delete;

        static MetricsRegistry& instance();

        void registerMetric(const std::shared_ptr<IMetric>& metric);

        std::vector<MetricSnapshot> collectAll();
};

}