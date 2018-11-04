#!/bin/bash
make histo_locks &>/dev/null
./histo_locks uiuc-large.pgm > result_lock.out
diff result_lock.out validation-large.out -w
echo "parallel version"
echo "==================================="
echo "linear version"
./histo uiuc-large.pgm | grep Runtime
