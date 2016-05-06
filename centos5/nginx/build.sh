#!/bin/bash

mkdir -vp $PREFIX/bin
mkdir -vp $PREFIX/var/log/nginx
mkdir -vp $PREFIX/var/run/nginx
mkdir -vp $PREFIX/var/tmp/nginx
touch $PREFIX/var/log/nginx/{access,error}.log

cat > $PREFIX/bin/nginx <<EOF
#!/bin/bash
CWD="\$(cd "\$(dirname "\${0}")" && pwd -P)"
ROOT_PATH="\$(cd "\${CWD}/../" && pwd -P)"
echo -e ""
echo -e "Setting up ROOT_PATH for nginx to \${ROOT_PATH} ..."
echo -e "Launching nginx ..."
echo -e ""
\${ROOT_PATH}/sbin/nginx -p "\${ROOT_PATH}" "\${@}"
EOF

chmod 755 $PREFIX/bin/nginx

./configure --help || echo None
./configure \
    --user=nginx \
    --group=nginx \
    --http-log-path=var/log/nginx/access.log \
    --error-log-path=var/log/nginx/error.log \
    --pid-path=var/run/nginx/nginx.pid \
    --lock-path=var/run/nginx/nginx.lock \
    --http-client-body-temp-path=var/tmp/nginx/client \
    --http-proxy-temp-path=var/tmp/nginx/proxy \
    --http-fastcgi-temp-path=var/tmp/nginx/fastcgi \
    --http-scgi-temp-path=var/tmp/nginx/scgi \
    --http-uwsgi-temp-path=var/tmp/nginx/uwsgi \
    --with-pcre \
    --with-pcre-jit \
    --with-http_realip_module \
    --with-http_ssl_module \
    --with-http_stub_status_module \
    --conf-path=etc/nginx/nginx.conf \
    --with-cc-opt="-I$PREFIX/include" \
    --with-ld-opt="-L$PREFIX/lib -Wl,-Bstatic -lssl -lcrypto -Wl,-Bdynamic -ldl" \
    --prefix="$PREFIX"

make
make install
