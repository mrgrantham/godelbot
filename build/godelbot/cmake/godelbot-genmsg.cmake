# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "godelbot: 2 messages, 1 services")

set(MSG_I_FLAGS "-Igodelbot:/home/james/godelbot_ws/src/godelbot/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(godelbot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv" NAME_WE)
add_custom_target(_godelbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "godelbot" "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv" ""
)

get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg" NAME_WE)
add_custom_target(_godelbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "godelbot" "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg" ""
)

get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg" NAME_WE)
add_custom_target(_godelbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "godelbot" "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/godelbot
)
_generate_msg_cpp(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/godelbot
)

### Generating Services
_generate_srv_cpp(godelbot
  "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/godelbot
)

### Generating Module File
_generate_module_cpp(godelbot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/godelbot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(godelbot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(godelbot_generate_messages godelbot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv" NAME_WE)
add_dependencies(godelbot_generate_messages_cpp _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_cpp _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_cpp _godelbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(godelbot_gencpp)
add_dependencies(godelbot_gencpp godelbot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS godelbot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/godelbot
)
_generate_msg_eus(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/godelbot
)

### Generating Services
_generate_srv_eus(godelbot
  "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/godelbot
)

### Generating Module File
_generate_module_eus(godelbot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/godelbot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(godelbot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(godelbot_generate_messages godelbot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv" NAME_WE)
add_dependencies(godelbot_generate_messages_eus _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_eus _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_eus _godelbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(godelbot_geneus)
add_dependencies(godelbot_geneus godelbot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS godelbot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/godelbot
)
_generate_msg_lisp(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/godelbot
)

### Generating Services
_generate_srv_lisp(godelbot
  "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/godelbot
)

### Generating Module File
_generate_module_lisp(godelbot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/godelbot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(godelbot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(godelbot_generate_messages godelbot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv" NAME_WE)
add_dependencies(godelbot_generate_messages_lisp _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_lisp _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_lisp _godelbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(godelbot_genlisp)
add_dependencies(godelbot_genlisp godelbot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS godelbot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/godelbot
)
_generate_msg_nodejs(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/godelbot
)

### Generating Services
_generate_srv_nodejs(godelbot
  "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/godelbot
)

### Generating Module File
_generate_module_nodejs(godelbot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/godelbot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(godelbot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(godelbot_generate_messages godelbot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv" NAME_WE)
add_dependencies(godelbot_generate_messages_nodejs _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_nodejs _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_nodejs _godelbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(godelbot_gennodejs)
add_dependencies(godelbot_gennodejs godelbot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS godelbot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/godelbot
)
_generate_msg_py(godelbot
  "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/godelbot
)

### Generating Services
_generate_srv_py(godelbot
  "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/godelbot
)

### Generating Module File
_generate_module_py(godelbot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/godelbot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(godelbot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(godelbot_generate_messages godelbot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/srv/set_camera_mode.srv" NAME_WE)
add_dependencies(godelbot_generate_messages_py _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/camera_status.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_py _godelbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/godelbot_ws/src/godelbot/msg/drive_param.msg" NAME_WE)
add_dependencies(godelbot_generate_messages_py _godelbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(godelbot_genpy)
add_dependencies(godelbot_genpy godelbot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS godelbot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/godelbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/godelbot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(godelbot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/godelbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/godelbot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(godelbot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/godelbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/godelbot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(godelbot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/godelbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/godelbot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(godelbot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/godelbot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/godelbot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/godelbot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(godelbot_generate_messages_py std_msgs_generate_messages_py)
endif()
