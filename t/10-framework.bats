load 'test_helper/bats-support/load'
load 'test_helper/bats-assert/load'

@test "framework-assert" {
    assert true
    refute false
}

@test "framework-run" {
    run false
    assert_failure
}
