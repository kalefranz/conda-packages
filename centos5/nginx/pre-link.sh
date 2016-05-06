if [[ $(id -u $USER) == 0 ]]; then
    ln -sf $PREFIX
fi
