#pragma once

#include <string>
#include <vector>
#include <fstream>
#include "../MetricsRegistry.h"

namespace metrics{

class FileWriter{
    private:
        std::ofstream m_file;
        std::string formatTimestamp() const;
        std::string formatValue(const std::any& value) const;
        
    public:
        explicit FileWriter(std::string filepath);
        void write(const std::vector<MetricSnapshot>& snapshots);
};
}