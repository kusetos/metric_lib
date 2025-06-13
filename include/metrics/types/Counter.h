#pragma

#include "metrics/IMetric.h"
#include <atomic>
#include <cstdint>

namespace metrics{

class Counter : public IMetric{

    private:
        std::string m_name;
        std::atomic<uint64_t> m_counter;

    public:
        explicit Counter(std::string name) : m_name(std::move(name)), m_counter(0) {}

        const std::string& getName() const override{
            return m_name;
        }

        std::any getValueAndReset() override {
            return m_counter.exchange(0, std::memory_order_acq_rel);
        }

        void increment() {
            m_counter.fetch_add(1, std::memory_order_relaxed);
        }
        
        void add(uint64_t value) {
            m_counter.fetch_add(value, std::memory_order_relaxed);
        }

};

}
