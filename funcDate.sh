#!/bin/bash
function hello() {
	echo "hello world"
	now
}

function now() {
	echo "it is $(date +%r)"
}

hello
