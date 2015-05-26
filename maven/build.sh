#/bin/bash -eu

rm -rf NOTICE README.txt
mv LICENSE LICENSE-MAVEN
cp -R * $PREFIX
