load 'test_helper/bats-support/load'
load 'test_helper/bats-assert/load'

@test "magic-cli" {
    run bin/magic-cli
    assert_success
    assert_output "Write me!"
}
