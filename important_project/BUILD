load("@io_bazel_rules_docker//python3:image.bzl", "py3_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer", "container_image")


py_binary(
    name = "important",
    srcs = ["important.py"],

    deps = [
        "//libs/printer:printer",
    ],
)

container_layer(
    name = "python_symlink",
    symlinks = {
      "/usr/bin/python": "/usr/local/bin/python",
      "/usr/bin/python3": "/usr/local/bin/python",
    },
)

container_image(
    name = "python3",
    base = "@python//image",
    layers = [":python_symlink"],
    visibility = ["//visibility:public"],
)

LIBS = [
    "//libs/printer:printer",
]

py3_image(
    name = "py_image",
    base = "//important_project:python3",
    srcs = ["important.py"],
    deps = LIBS,
    main = "important.py",
)