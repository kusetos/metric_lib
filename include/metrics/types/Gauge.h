#pragma once

#include "metrics/IMetric.h"
#include <atomic>

namespace metrics{
    
class Gauge: public IMetric{


    private:
        std::string m_name;
        std::atomic<double> m_value;

    public:
        explicit Gauge(std::string name) : m_name(std::move(name)), m_value(0.0){}

        const std::string& getName() const override {
            return m_name;
        }

        std::any getValueAndReset() override {
            return m_value.load(std::memory_order_relaxed);
        }

        void set(double value){
            m_value.store(value, std::memory_order_relaxed);
        }

};
}