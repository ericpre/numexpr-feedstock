if "%mkl_support%" == "mkl" (
  (
  echo [mkl]
  echo library_dirs = %LIBRARY_LIB%
  echo include_dirs = %LIBRARY_INC%
  echo libraries = mkl_intel_lp64, mkl_intel_thread, mkl_core, libiomp5md
  ) > site.cfg
)

%PYTHON% setup.py install
