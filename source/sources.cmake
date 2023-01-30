if(INCLUDE__SVM_Footpad)

    get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}" ABSOLUTE)

    include_directories(${_tmp_source_dir}/SVM_Footpad)

    file(GLOB_RECURSE _tmpsrc
        "${_tmp_source_dir}/*.c"
        "${_tmp_source_dir}/*.cpp"
        "${_tmp_source_dir}/*.S"
        "${_tmp_source_dir}/*.s")

    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmpsrc})

endif(INCLUDE__SVM_Footpad)

