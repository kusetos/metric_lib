#include "metrics/writers/FileWriter.h"
#include <chrono>
#include <iomanip>
#include <sstream>
#include <iostream>
#include <stdexcept>

namespace metrics
{
    
FileWriter::FileWriter(std::string filepath) : m_file(filepath, std::ios::out | std::ios::app) {
    if (!m_file.is_open()) {
        throw std::runtime_error("Failed to open metrics file: " + filepath);
    }
}

std::string FileWriter::formatTimestamp() const{
    const auto now = std::chrono::system_clock::now();
    const auto time_t_now = std::chrono::system_clock::to_time_t(now);
    const auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;

    std::stringstream ss;
    ss << std::put_time(std::localtime(&time_t_now), "%Y-%m-%d %H:%M:%S");
    ss << '.' << std::setfill('0') << std::setw(3) << ms.count();
    return ss.str();
}

std::string FileWriter::formatValue(const std::any& value) const{
    if(const auto* val = std::any_cast<double>(&value)){
        return std::to_string(*val);
    }
    if (const auto* val = std::any_cast<uint64_t>(&value)){
        return std::to_string(*val);
    }
    if (const auto* val = std::any_cast<int>(&value)){
        return std::to_string(*val);
    }
    return "unsupported_type";
}

void FileWriter::write(const std::vector<MetricSnapshot>& snapshots){
    if(snapshots.empty()){
        return;
    }
    std::stringstream line;
    line << formatTimestamp();

    for(const auto&  snapshot : snapshots){
        line << " \"" << snapshot.name << "\" " << formatValue(snapshot.value);
    }
    m_file << line.str() << std::endl;
}


} // namespace metrics
 