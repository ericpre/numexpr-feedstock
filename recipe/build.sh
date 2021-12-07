#!/bin/bash
if [[ $mkl_support == "mkl" ]]; then
cat > site.cfg <<EOF
[mkl]
library_dirs = $PREFIX/lib
include_dirs = $PREFIX/include
libraries = mkl_rt
EOF
echo "#####################"
echo "site.cfg file written"
fi

$PYTHON -m pip install . --no-deps -vv
