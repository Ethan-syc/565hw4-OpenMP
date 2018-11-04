#!/bin/bash
make histo_atomic &>/dev/null
./histo_atomic uiuc-large.pgm > result_atomic.out
diff result_atomic.out validation-large.out -w
echo "parallel version"
echo "==================================="
echo "linear version"
./histo uiuc-large.pgm | grep Runtime
