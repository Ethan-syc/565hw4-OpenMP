#!/bin/bash
make histo_creative &>/dev/null
./histo_creative uiuc-large.pgm > result_creative.out
diff result_creative.out validation-large.out -w
echo "parallel version"
echo "==================================="
echo "linear version"
./histo uiuc-large.pgm | grep Runtime
