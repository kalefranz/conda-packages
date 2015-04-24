#/bin/bash -eu

export JAVA_HOME=$(readlink -f $PREFIX/bin/java | sed "s:/bin/java::")

export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH


curl -L -C - -o $PREFIX/lib/optional/hamcrest-core-1.3.jar \
    http://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar


sh build.sh -Ddist.dir=$PREFIX dist
