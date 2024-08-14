#!/usr/bin/env bash

here="${BASH_SOURCE[0]%/*}"

set -e
set -u

echo ":: Building demo..."
uxnasm demos/demo.tal demo.rom


run_test() {
	test_num="$1"; shift
	payload="$1"; shift

	echo ":: Testing..."

	echo -n "  Test $test_num... "

	printf "%s\n" "$payload" | uxncli demo.rom &> "$here/$test_num.test"

	if ! diff --text --unified "$here/simple-tests.$test_num.out" "$here/$test_num.test"; then
		echo "FAILED"
		return
	else
		echo "OK"
		rm "$here/$test_num.test"
	fi
}

run_test 01 '
#
s:10
w2 b3 3f 55fa ce s0:10
q
'

run_test 02 '
#
%
q
'
