#/bin/bash -eu

export JAVA_HOME=$(readlink -f $PREFIX/bin/java | sed "s:/bin/java::")

export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH


export JCC_JDK=$JAVA_HOME

# JCC_JDK
# Java JDK directory '/usr/lib/jvm/java-7-openjdk-amd64' does not exist.


#/opt/miniconda/envs/_build/jre/lib/amd64/libnio.so

echo $PREFIX
ls -al $PREFIX

echo $JAVA_HOME
ls -al $JAVA_HOME

ls -al $JAVA_HOME/jre/lib/amd64

$PYTHON setup.py install
