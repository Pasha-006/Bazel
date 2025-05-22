load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "cc_toolchain_config",
    cpu = "x64_windows",
    compiler = "mingw-gcc",
    toolchain_identifier = "local_windows",
    host_system_name = "local",
    target_system_name = "local",
    target_libc = "local",
    abi_version = "local",
    abi_libc_version = "local",
    tool_paths = [
        {"name": "gcc", "path": "gcc"},
        {"name": "g++", "path": "g++"},
        {"name": "ar", "path": "ar"},
        {"name": "strip", "path": "strip"},
    ],
    cxx_builtin_include_directories = [
        "/ucrt64/include/c++/12.2.0",
        "/ucrt64/include",
    ],
    builtin_sysroot = "/ucrt64",
    compiler_flags = [
        "-Wall",
        "-Werror",
    ],
    linker_flags = [
        "-L/ucrt64/lib",
    ],
    dynamic_linker_flags = [
        "-L/ucrt64/lib",
    ],
    objcopy_embed_flags = [],
    supports_gold_linker = False,
    supports_start_end_lib = False,
    supports_interface_shared_objects = False,
    supports_fission = False,
    supports_dynamic_linker = True,
    supports_embedded_runtimes = False,
    supports_incremental_linker = False,
    supports_thin_lto = False,
    supports_lto = False,
    supports_legacy_features = False,
    supports_normalizing_ar = False,
    supports_absolute_paths = False,
)
