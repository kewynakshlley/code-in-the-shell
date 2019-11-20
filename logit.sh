#!/bin/bash

function logit_randomly(){
	local MESSAGE="Random: $RANDOM"
	(logger -s -i -t "randomly" -p user.info $MESSAGE)
}

MESSAGE="Random: $RANDOM"
logit_randomly
logit_randomly
logit_randomly


