#!/bin/sh

emerge -avqpuND @world | grep "ebuild" | wc -l | sed "s/^/ /;s/^0$//g"
