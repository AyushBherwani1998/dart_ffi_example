cmake_minimum_required(VERSION 3.4.1)

# The SHARED will allow us to dynamically load library at runtime.

add_library( native_increment SHARED ../ios/Classes/native_increment.cpp )