#/bin/bash -eu

ls -al

rm -rf NOTICE README.txt
mv LICENSE LICENSE-MAVEN
cp -R * $PREFIX
