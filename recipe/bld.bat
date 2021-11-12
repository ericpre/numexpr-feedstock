if "%mkl_support%" == "mkl" (
  (
  echo [mkl]
  echo library_dirs = %LIBRARY_LIB%
  echo include_dirs = %LIBRARY_INC%
  echo libraries = mkl_intel_lp64, mkl_gf_lp64, mkl_intel_thread, mkl_core, mkl_rt, iomp5
  ) > site.cfg
)

%PYTHON% -m pip install . --no-deps -vv
