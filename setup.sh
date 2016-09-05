set -eux

main() {
    local user=rust

    apt-get update

    apt-get install --no-install-recommends -y \
            `# arm-none-eabi` gcc-arm-none-eabi gdb-arm-none-eabi openocd qemu-system-arm \
            `# xargo` ca-certificates curl libcurl4-openssl-dev libssh2-1-dev \
            sudo

    # passwordless sudo
    echo 'ALL ALL=(ALL) NOPASSWD: ALL' | (EDITOR="tee -a" visudo)

    useradd -m $user

    # rustup + xargo
    local tag=v0.1.8
    local url=https://github.com/japaric/xargo/releases/download/$tag/xargo-$tag-x86_64-unknown-linux-gnu.tar.gz \

    su -l -c "
curl https://sh.rustup.rs -sSf | sh -s -- -y
curl -Ls $url | tar -C ~/.cargo/bin/ -xz
source ~/.cargo/env
rustup toolchain remove stable
" $user

    rm /setup.sh
}

main
