# bazel-example

Hello, check these bazel concepts to start:

https://bazel.build/concepts/build-ref

# Installing in ubuntu

https://bazel.build/install/ubuntu

# Running some targets

```bash
# To test the python library
bazel test //libs/printer/tests:test_message

# To build the python library
bazel build //libs/printer:printer

# To run the library
bazel run //important_project:important -- -m "tutui"

# To run the image created
bazel run //important_project:py_image

# To run using the custom rule
bazel run //important_project:print_anything
```
