BATS_ROOT="$SRC_DIR"
mkdir -p "$PREFIX"/{bin,libexec}
cp -R "$SRC_DIR"/bin/* "$PREFIX"/bin
cp -R "$SRC_DIR"/libexec/* "$PREFIX"/libexec
