#/bin/bash -eu

export JAVA_HOME=$(readlink -f $PREFIX/bin/java | sed "s:/bin/java::")
echo $JAVA_HOME

# JCC_JDK
# Java JDK directory '/usr/lib/jvm/java-7-openjdk-amd64' does not exist.

$PYTHON setup.py install
