LIBS='libasan libasan_cxx libubsan_standalone libubsan_standalone_cxx'
for lib in $LIBS; do
  libname=${lib:3} # Strip 'lib' prefix.
  lib64=libclang_rt.${libname}-x86_64.a
  cp -a ./${lib}.a ${lib64}
done
