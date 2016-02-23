export PKG_CONFIG_PATH=$CFITSIO_DIR/lib/pkgconfig
export EXTERNAL_CFITS=yes
export CFITSIO_EXT_INC=$CFITSIO_DIR/include
export CFITSIO_EXT_LIB=$CFITSIO_DIR/lib/libcfitsio.so

# healpy build will fail on OS X with some combination of (C|CXX|LD)FLAGS
# e.g., specifically when '-arch x86_64' is given (makes it set the wrong sysroot)
unset CFLAGS
unset CXXFLAGS
unset LDFLAGS
