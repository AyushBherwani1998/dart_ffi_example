#include <stdint.h>

extern "C" __attribute__((visibility("default"))) __attribute__((used))
int32_t native_increment(int32_t value) {
return ++value;
}