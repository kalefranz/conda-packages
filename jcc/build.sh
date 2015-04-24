#/bin/bash -eu

export JAVA_HOME=$(readlink -f `which java` | sed "s:/bin/java::")

$PYTHON setup.py install
