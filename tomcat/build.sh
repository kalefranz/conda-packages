#/bin/bash -eu

ls -al
ls -al bin

rm -rf NOTICE README.txt
mv LICENSE LICENSE-MAVEN

mkdir -p $PREFIX/share/apache-tomcat
cp -R * $PREFIX/share/apache-tomcat/
