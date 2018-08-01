#!/usr/bin/env bash
bazel test --test_output=errors --config=cuda -c opt \
--remote_http_cache=http://50.23.152.171:8080/cache \
--local_test_jobs=2 --run_under=//tensorflow/tools/ci_build/gpu_build:parallel_gpu_execute \
--test_tag_filters=requires-gpu,-no_gpu,-no_oss,-oss_serial,-benchmark-test \
--distinct_host_configuration=false \
-- //tensorflow/... -//tensorflow/compiler/... //tensorflow/contrib/lite/...