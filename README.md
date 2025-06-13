# metrics_lib

**metrics_lib** — это легковесная C++ библиотека для сбора, регистрации и записи пользовательских метрик (счётчики, гейджи и т.д.) в лог-файл. Подходит для встраивания в сервисы, где важно наблюдать за поведением системы без использования внешних систем мониторинга.

---

## 🚀 Возможности

- **Counter** — атомарный счётчик (подходит для подсчета событий, RPS и т.д.)
- **Gauge** — атомарное значение (например, CPU/RAM загрузка)
- **FileWriter** — запись метрик в лог-файл в текстовом формате
- **MetricsReporter** — отдельный поток, который периодически пишет метрики
- Пример с генерацией метрик в `main.cpp`

---

## 🗂 Структура проекта

```
metric_lib/
├── include/
│   └── metrics/
│       ├── IMetric.h
│       ├── MetricsRegistry.h
│       ├── MetricsReporter.h
│       ├── types/
│       │   ├── Counter.h
│       │   └── Gauge.h
│       └── writers/
│           └── FileWriter.h
├── src/
│   ├── MetricsRegistry.cpp
│   ├── MetricsReporter.cpp
│   └── writers/
│       └── FileWriter.cpp
├── examples/
│   └── main.cpp
├── CMakeLists.txt
└── README.md
```

---

## ⚙️ Сборка и запуск

```bash
git clone https://github.com/kusetos/metrics_lib.git
cd metrics_lib
mkdir build && cd build
cmake ..
cmake --build .
./examples/main
```

---

## 📤 Пример вывода

Пример содержимого `build/metrics.log`:

```
2025-06-11 14:23:01.123 "CPU Util" 1.23 "HTTP RPS" 41
2025-06-11 14:23:02.123 "CPU Util" 2.01 "HTTP RPS" 37
```

---

## Использование

```cpp
auto cpu_gauge = std::make_shared<metrics::Gauge>("CPU Util");
auto counter = std::make_shared<metrics::Counter>("Requests");

metrics::MetricsRegistry::instance().registerMetric(cpu_gauge);
metrics::MetricsRegistry::instance().registerMetric(counter);

auto writer = std::make_unique<metrics::FileWriter>("metrics.log");
metrics::MetricsReporter reporter(metrics::MetricsRegistry::instance(), std::move(writer), std::chrono::seconds(1));
reporter.start();
```
