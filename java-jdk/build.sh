#/bin/bash -eu

printenv
pwd
ls -al


# BUILD_CACHE="$RECIPE_DIR/../build/cache"
# mkdir -p $BUILD_CACHE


# # Download
# if [[ ! -f $BUILD_CACHE/$JAVA_JDK_FN ]]; then
#     curl -L -C - \
#         --referer http://www.azulsystems.com/products/zulu/downloads \
#         -o $BUILD_CACHE/$JAVA_JDK_FN \
#         $JAVA_JDK_URL
# fi
# cp -v $BUILD_CACHE/$JAVA_JDK_FN $JAVA_JDK_FN


# # this must exist because ln does not have the -r option in Mac. Apple, unix - but not!
relpath(){ python -c "import os.path; print(os.path.relpath('$1','${2:-$PWD}'))" ; }
LINKLOC="$PREFIX/lib/*/jli"


# clean up
rm -rf release README readme.txt Welcome.html *jli.* demo sample *.zip
mv * $PREFIX
ls -al $PREFIX

# Install
# mv $PREFIX/zulu1*/* $PREFIX
# rm -rf $PREFIX/zulu1*
JLI_REL=$(relpath $LINKLOC/*jli.* $PREFIX/lib)
ln -s $JLI_REL $PREFIX/lib

# Some clean up
rm -rf $PREFIX/release $PREFIX/README $PREFIX/Welcome.html $PREFIX/*jli.*
chmod og+w $PREFIX/COPYRIGHT $PREFIX/LICENSE $PREFIX/THIRDPARTYLICENSEREADME.txt
mv $PREFIX/COPYRIGHT $PREFIX/COPYRIGHT-JRE
mv $PREFIX/LICENSE $PREFIX/LICENSE-JRE
mv $PREFIX/THIRDPARTYLICENSEREADME.txt $PREFIX/THIRDPARTYLICENSEREADME-JRE.txt
