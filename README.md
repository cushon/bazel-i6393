Repro for https://github.com/bazelbuild/bazel/issues/6393
```
bazel --bazelrc=/dev/null build --config=remote ...
WARNING: Duplicate rc file:
/usr/local/google/home/cushon/bazel-toolchains.bazelrc is imported multiple
times from /usr/local/google/home/cushon/.bazelrc
INFO: Analysed target //:a (0 packages loaded).
INFO: Found 1 target...
ERROR: /tmp/tmp.YHk2iDCX3z/BUILD:3:1: error executing shell command: '/bin/bash
-c cd bazel-out/k8-fastbuild/bin/a_dir && pwd' failed (Exit 1)
/bin/bash: line 0: cd: bazel-out/k8-fastbuild/bin/a_dir: No such file or
directory
Target //:a failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 5.661s, Critical Path: 5.47s
INFO: 0 processes.
FAILED: Build did NOT complete successfully
```
