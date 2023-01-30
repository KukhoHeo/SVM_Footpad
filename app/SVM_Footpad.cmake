# ubinos_config_info {"name_base": "foot_original", "build_type": "cmake_ubinos", "app": true}

set_cache(PROJECT_TOOLCHAIN_C_STD "GNU11" STRING)
set_cache(PROJECT_TOOLCHAIN_CXX_STD "GNU++14" STRING)
set_cache(PROJECT_TOOLCHAIN_CXX_W_NO_CXX14_COMPAT FALSE BOOL)

# set_cache(UBINOS__BSP__CMSIS_INCLUDE_DIR "${PROJECT_LIBRARY_DIR}/CMSIS_5/CMSIS/Core/Include" PATH)

set_cache(UBINOS__UBIK__TICK_TYPE "RTC" STRING)

set_cache(UBINOS__BSP__DTTY_TYPE "EXTERNAL" STRING)
set_cache(STM32CUBEF2__DTTY_STM32_UART_ENABLE TRUE BOOL)

#select mode
set_cache(NUCLEO_TINYML__USE_TCN TRUE BOOL)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg.cmake)
# include(${PROJECT_LIBRARY_DIR}/CMSIS_5_wrapper/config/cmsis_5.cmake)
include(${PROJECT_LIBRARY_DIR}/seggerrtt_wrapper/config/seggerrtt.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_extension/config/stm32cubef2_extension.cmake)
# include(${PROJECT_LIBRARY_DIR}/tflite-micro_wrapper/config/tflite_micro.cmake)
include(${PROJECT_LIBRARY_DIR}/SVM_Footpad/config/SVM_Footpad.cmake)


set(INCLUDE__APP TRUE)
set(APP__NAME "svm")

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/${APP__NAME}" ABSOLUTE)
string(TOLOWER ${UBINOS__BSP__BOARD_VARIATION_NAME} _temp_board_model)

include_directories(${_tmp_source_dir}/arch/arm/cortexm/${_temp_board_model}/Inc)
include_directories(${_tmp_source_dir})

file(GLOB_RECURSE _tmp_sources
    "${_tmp_source_dir}/*.c"
    "${_tmp_source_dir}/*.cpp"
    "${_tmp_source_dir}/*.cc"
    "${_tmp_source_dir}/*.S"
    "${_tmp_source_dir}/*.s")
set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_sources})
