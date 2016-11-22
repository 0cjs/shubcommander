load 'test_helper/bats-support/load'
load 'test_helper/bats-assert/load'

@test "magic-cli unit-test" {
    run bin/magic-cli m-cli-ut p1 "p 2"
    assert_success
    assert_output <<____
COMMAND_BASE_DIR=XXX
COMMAND_BASE_CMD=magic-cli
COMMAND_BASE_SUB=m-cli-ut
0: magic-cli-m-cli-ut
1: p1
2: p 2
____
}

# XXX Need to test that this stuff works in dirs with,
#     e.g., spaces in the names, or even spaces in the command name.
