#!/bin/bash
make &>/dev/null
./AMGMk > result.out
./AMGMk_original > result_origin.out
diff result.out result_origin.out | grep Wall
