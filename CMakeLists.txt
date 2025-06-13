# Минимальная требуемая версия CMake
cmake_minimum_required(VERSION 3.14)

# Название проекта
project(MetricsLibraryExample LANGUAGES CXX)

# Устанавливаем стандарт C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Путь к заголовочным файлам
set(METRICS_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)

# --- 1. Создаем статическую библиотеку 'metrics_lib' ---
add_library(metrics_lib STATIC
    src/MetricsRegistry.cpp
    src/MetricsReporter.cpp
    src/writers/FileWriter.cpp
)

target_include_directories(metrics_lib PUBLIC
    ${METRICS_INCLUDE_DIR}
)

# --- 2. Создаем исполняемый файл ---
add_executable(run_example
    examples/main.cpp
)

target_include_directories(run_example PRIVATE
    ${METRICS_INCLUDE_DIR}
)

# --- 3. Линкуем с библиотекой ---
target_link_libraries(run_example PRIVATE metrics_lib)

# --- 4. Линкуем pthread, если Linux/macOS ---
if(CMAKE_SYSTEM_NAME STREQUAL "Linux" OR CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    target_link_libraries(run_example PRIVATE pthread)
endif()

# --- 5. Вывод сообщения после конфигурации ---
message(STATUS "Проект настроен. Для сборки выполните: cmake --build .")
