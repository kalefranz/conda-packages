#!/bin/bash

MACHINE="$(uname 2>/dev/null)"

export CFLAGS="-Wall -g -m64 -pipe -O2 -march=x86-64 -fPIC"
export CXXLAGS="${CFLAGS}"
export CPPFLAGS="-I${PREFIX}/include"
export LDFLAGS="-L${PREFIX}/lib"

mkdir -vp ${PREFIX}/bin || exit 1;
mkdir -vp ${PREFIX}/var/log/nginx || exit 1;
mkdir -vp ${PREFIX}/var/run/nginx || exit 1;
touch ${PREFIX}/var/log/nginx/{access,error}.log || exit 1;

cat > ${PREFIX}/bin/nginx <<EOF
#!/bin/bash
CWD="\$(cd "\$(dirname "\${0}")" && pwd -P)"
ROOT_PATH="\$(cd "\${CWD}/../" && pwd -P)"
echo -e ""
echo -e "Setting up ROOT_PATH for nginx to \${ROOT_PATH} ..."
echo -e "Launching nginx ..."
echo -e ""
\${ROOT_PATH}/sbin/nginx -p "\${ROOT_PATH}" "\${@}"
EOF

chmod 755 ${PREFIX}/bin/nginx

chmod +x configure

./configure --help || echo None

./configure \
    --user=nginx \
    --group=nginx \
    --http-log-path=var/log/nginx/access.log \
    --error-log-path=var/log/nginx/error.log \
    --pid-path=var/run/nginx/nginx.pid \
    --lock-path=var/run/nginx/nginx.lock \
    --http-client-body-temp-path=/var/tmp/nginx/client \
    --http-proxy-temp-path=/var/tmp/nginx/proxy \
    --http-fastcgi-temp-path=/var/tmp/nginx/fastcgi \
    --http-scgi-temp-path=/var/tmp/nginx/scgi \
    --http-uwsgi-temp-path=/var/tmp/nginx/uwsgi \
    --with-pcre \
    --with-http_ssl_module \
    --conf-path=etc/nginx/nginx.conf \
    --with-cc-opt="-I$PREFIX/include" \
    --with-ld-opt="-L$PREFIX/lib" \
    --prefix="${PREFIX}" || return 1;

make || return 1;
make install || return 1;
