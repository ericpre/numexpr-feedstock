#!/bin/bash

cat > site.cfg <<EOF
[mkl]
library_dirs = $PREFIX/lib
include_dirs = $PREFIX/include
libraries = mkl_intel_lp64, mkl_gf_lp64, mkl_intel_thread, mkl_core, mkl_rt, iomp5
EOF

$PYTHON -m pip install . --no-deps -vv
