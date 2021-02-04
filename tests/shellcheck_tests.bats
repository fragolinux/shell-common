#!/usr/bin/env bats

load test_helper

@test "shellcheck passed" {
    run shellcheck ${COMMON_ROOT}/lib/*.sh
    assert_success
}
