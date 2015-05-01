#/bin/bash -eu
# $PYTHON setup.py install

# # http://bendemott.blogspot.com/2013/11/installing-pylucene-4-451.html

# %prep
# %setup -q -n %{_basename}-%{UPSTREAM_VERSION}
# # -D Do not delete the directory before unpacking.
# # -a # will untar Source# after cd'ing into the directory.
# %setup -D -a 1 -n pylucene-%{UPSTREAM_VERSION}
# mv lucene-%{LUCENE_VERSION} lucene-java-%{LUCENE_VERSION}
# %patch0 -p1

# %build
# # PyLucene does not use autoconf, so we need a custom mechanism to tell the
# # Makefile if it should use 'lib' or 'lib64'.
# LIBDIR_NAME=`echo %{_libdir} | sed -e "s/^.*\/\(lib6\?4\?\).*$/\1/"`
# LIBDIR_NAME=${LIBDIR_NAME} PYTHON=%{__python} JCC=%{JCC} ANT=ant NUM_FILES=2 \
#         make all

# %install
# rm -rf $RPM_BUILD_ROOT
# DESTDIR=%{buildroot} PYTHON=%{__python} JCC=%{JCC} ANT=ant NUM_FILES=2 \
#         make install INSTALL_OPT="--root $RPM_BUILD_ROOT"



# Source0:        http://archive.apache.org/dist/lucene/pylucene/pylucene-%{UPSTREAM_VERSION}-src.tar.gz
# Source1:        http://archive.apache.org/dist/lucene/java/lucene-%{version}-src.tar.gz
# Patch0:         pylucene-modename.patch

# BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
# BuildRequires:  ant %{python_rpm}-devel %{python_rpm_prefix}-JCC-devel


# %define LUCENE_VERSION 2.9.4
# %define UPSTREAM_VERSION %{LUCENE_VERSION}-1
# %define JCC "%{__python} %{python_sitearch}/jcc/__init__.py"

make
make test
make install

