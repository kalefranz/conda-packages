#!/bin/bash


MACHINE="$(uname 2>/dev/null)"

#export CFLAGS="-Wall -g -m64 -pipe -O2 -march=x86-64 -fPIC"
#export CXXLAGS="${CFLAGS}"
#export CPPFLAGS="-I${PREFIX}/include"
#export LDFLAGS="-L${PREFIX}/lib"

LinuxInstallation() {
    scons --help
    scons --variables-help
    scons \
        --ssl \
        --prefix="${PREFIX}" \
        CC=$PREFIX/bin/gcc \
        CXX=$PREFIX/bin/g++ \
        CFLAGS="-Wall -g -m64 -pipe -O2 -march=x86-64 -fPIC" \
        CCFLAGS="-I${PREFIX}/include" \
        LINKFLAGS="-L${PREFIX}/lib" \
        LIBPATH="-L${PREFIX}/lib" \
        --jobs=3 \
        all || return 1;

    scons \
        --prefix="${PREFIX}" \
        CC=$PREFIX/bin/gcc \
        CXX=$PREFIX/bin/g++ \
        CFLAGS="-Wall -g -m64 -pipe -O2 -march=x86-64 -fPIC" \
        CCFLAGS="-I${PREFIX}/include" \
        LINKFLAGS="-L${PREFIX}/lib" \
        LIBPATH="-L${PREFIX}/lib" \
        install || return 1;

    return 0;
}

case ${MACHINE} in
    'Linux')
        LinuxInstallation || exit 1;
        ;;
    *)
        echo -e "Unsupported machine type: ${MACHINE}";
        exit 1;
        ;;
esac
