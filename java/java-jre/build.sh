#/bin/bash -eu

# resource: https://github.com/cyclus/release/tree/master/conda-recipes/java-jre

# # this must exist because ln does not have the -r option in Mac. Apple, unix - but not!
relpath(){ python -c "import os.path; print(os.path.relpath('$1','${2:-$PWD}'))" ; }
LINKLOC="$PREFIX/lib/*/jli"

# clean up
ls -al
rm -rf release README readme.txt Welcome.html *jli.* demo sample *.zip
mv * $PREFIX

# Install
JLI_REL=$(relpath $LINKLOC/*jli.* $PREFIX/lib)
ln -s $JLI_REL $PREFIX/lib
chmod +x $PREFIX/bin/* $PREFIX/jre/bin/*
chmod +x $PREFIX/lib/jexec $PREFIX/jre/lib/jexec
find $PREFIX -type f -name '*.so' -exec chmod +x {} \;

# Some clean up
rm -rf $PREFIX/release $PREFIX/README $PREFIX/Welcome.html
chmod og+w $PREFIX/DISCLAIMER $PREFIX/LICENSE $PREFIX/THIRD_PARTY_README $PREFIX/ASSEMBLY_EXCEPTION
mv $PREFIX/DISCLAIMER $PREFIX/DISCLAIMER-JDK
mv $PREFIX/LICENSE $PREFIX/LICENSE-JDK
mv $PREFIX/THIRD_PARTY_README $PREFIX/THIRD_PARTY_README-JDK
mv $PREFIX/ASSEMBLY_EXCEPTION $PREFIX/ASSEMBLY_EXCEPTION-JDK









BUILD_CACHE="$RECIPE_DIR/../build/cache"
mkdir -p $BUILD_CACHE
UNAME=`uname`
if [[ $UNAME == "Linux" ]]; then
  # Linux
  URL="http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jre-8u25-linux-x64.tar.gz"
  NSTRIP=1
  LINKLOC="$PREFIX/lib/*/jli"
else
  # MacOSX
  URL="http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jre-8u25-macosx-x64.tar.gz"
  NSTRIP=3
  LINKLOC="$PREFIX/lib/jli"
fi

# this must exist because ln does not have the -r option in Mac. Apple, unix - but not!
relpath(){ python -c "import os.path; print(os.path.relpath('$1','${2:-$PWD}'))" ; }

# Download
if [ ! -f $BUILD_CACHE/jre.tar.gz ]; then
  curl -L -C - -b "oraclelicense=accept-securebackup-cookie" -o $BUILD_CACHE/jre.tar.gz $URL
fi
cp -v $BUILD_CACHE/jre.tar.gz jre.tar.gz

# Install
tar xvf jre.tar.gz --strip-components=$NSTRIP -C $PREFIX
JLI_REL=$(relpath $LINKLOC/*jli.* $PREFIX/lib)
ln -s $JLI_REL $PREFIX/lib

# Some clean up
rm -rf $PREFIX/release $PREFIX/README $PREFIX/Welcome.html $PREFIX/*jli.*
chmod og+w $PREFIX/COPYRIGHT $PREFIX/LICENSE $PREFIX/THIRDPARTYLICENSEREADME.txt
mv $PREFIX/COPYRIGHT $PREFIX/COPYRIGHT-JRE
mv $PREFIX/LICENSE $PREFIX/LICENSE-JRE
mv $PREFIX/THIRDPARTYLICENSEREADME.txt $PREFIX/THIRDPARTYLICENSEREADME-JRE.txt