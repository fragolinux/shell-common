#!/usr/bin/env bats

load test_helper

@test "shellcheck passed" {
    if ! command -v shellcheck &> /dev/null; then
      skip "shellcheck is not installed"
    fi
    run shellcheck ${COMMON_ROOT}/lib/*.sh
    assert_success
}
