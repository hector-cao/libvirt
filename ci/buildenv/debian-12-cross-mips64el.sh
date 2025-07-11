# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

function install_buildenv() {
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get dist-upgrade -y
    apt-get install --no-install-recommends -y \
            augeas-lenses \
            augeas-tools \
            bash-completion \
            black \
            ca-certificates \
            ccache \
            codespell \
            cpp \
            diffutils \
            dwarves \
            ebtables \
            flake8 \
            gettext \
            git \
            grep \
            libclang-rt-dev \
            libnbd-dev \
            libxml2-utils \
            locales \
            make \
            meson \
            ninja-build \
            perl-base \
            pkgconf \
            python3 \
            python3-docutils \
            python3-pytest \
            qemu-utils \
            sed \
            xsltproc
    sed -Ei 's,^# (en_US\.UTF-8 .*)$,\1,' /etc/locale.gen
    dpkg-reconfigure locales
    rm -f /usr/lib*/python3*/EXTERNALLY-MANAGED
    export DEBIAN_FRONTEND=noninteractive
    dpkg --add-architecture mips64el
    apt-get update
    apt-get dist-upgrade -y
    apt-get install --no-install-recommends -y dpkg-dev
    apt-get install --no-install-recommends -y \
            gcc-mips64el-linux-gnuabi64 \
            libacl1-dev:mips64el \
            libapparmor-dev:mips64el \
            libattr1-dev:mips64el \
            libaudit-dev:mips64el \
            libblkid-dev:mips64el \
            libc6-dev:mips64el \
            libcap-ng-dev:mips64el \
            libcurl4-gnutls-dev:mips64el \
            libdevmapper-dev:mips64el \
            libfuse-dev:mips64el \
            libglib2.0-dev:mips64el \
            libglusterfs-dev:mips64el \
            libgnutls28-dev:mips64el \
            libiscsi-dev:mips64el \
            libjson-c-dev:mips64el \
            libnl-3-dev:mips64el \
            libnl-route-3-dev:mips64el \
            libnuma-dev:mips64el \
            libparted-dev:mips64el \
            libpcap0.8-dev:mips64el \
            libpciaccess-dev:mips64el \
            librbd-dev:mips64el \
            libreadline-dev:mips64el \
            libsanlock-dev:mips64el \
            libsasl2-dev:mips64el \
            libselinux1-dev:mips64el \
            libssh-dev:mips64el \
            libssh2-1-dev:mips64el \
            libtirpc-dev:mips64el \
            libudev-dev:mips64el \
            libxml2-dev:mips64el \
            systemtap-sdt-dev:mips64el
    mkdir -p /usr/local/share/meson/cross
    printf "[binaries]\n\
c = '/usr/bin/mips64el-linux-gnuabi64-gcc'\n\
ar = '/usr/bin/mips64el-linux-gnuabi64-gcc-ar'\n\
strip = '/usr/bin/mips64el-linux-gnuabi64-strip'\n\
pkgconfig = '/usr/bin/mips64el-linux-gnuabi64-pkg-config'\n\
\n\
[host_machine]\n\
system = 'linux'\n\
cpu_family = 'mips64'\n\
cpu = 'mips64el'\n\
endian = 'little'\n" > /usr/local/share/meson/cross/mips64el-linux-gnuabi64
    dpkg-query --showformat '${Package}_${Version}_${Architecture}\n' --show > /packages.txt
    mkdir -p /usr/libexec/ccache-wrappers
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/mips64el-linux-gnuabi64-cc
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/mips64el-linux-gnuabi64-gcc
}

export CCACHE_WRAPPERSDIR="/usr/libexec/ccache-wrappers"
export LANG="en_US.UTF-8"
export MAKE="/usr/bin/make"
export NINJA="/usr/bin/ninja"
export PYTHON="/usr/bin/python3"

export ABI="mips64el-linux-gnuabi64"
export MESON_OPTS="--cross-file=mips64el-linux-gnuabi64"
