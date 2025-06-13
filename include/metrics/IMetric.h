#pragma once

#include <string>
#include <any>

namespace metrics{


class IMetric {
    public:
        virtual ~IMetric() = default;

        virtual const std::string& getName() const = 0;

        virtual std::any getValueAndReset() = 0;
};


}