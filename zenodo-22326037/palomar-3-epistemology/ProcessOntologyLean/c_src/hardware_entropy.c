#include <stdint.h>
#include <time.h>
#include <lean/lean.h>

/* Native C FFI for Process Ontology Hardware Entropy & Micro-Jitter Sampling */
LEAN_EXPORT uint64_t lean_read_hardware_entropy(uint64_t seed) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC_RAW, &ts);
    uint64_t ns = (uint64_t)ts.tv_nsec + ((uint64_t)ts.tv_sec * 1000000000ULL);
    
    // Combine nanosecond clock jitter with seed using Xorshift64Star
    uint64_t x = ns ^ seed;
    x ^= x >> 12;
    x ^= x << 25;
    x ^= x >> 27;
    return x * 0x2545F4914F6CDD1DULL;
}
