# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

FROM registry.opensuse.org/opensuse/leap:15.3

RUN zypper update -y && \
    zypper install -y \
           bash-completion \
           ca-certificates \
           ccache \
           cppi \
           gcc \
           gettext-runtime \
           git \
           glib2-devel \
           glibc-locale \
           gtk-vnc-devel \
           gtk3-devel \
           icoutils \
           libgovirt-devel \
           librest-devel \
           libtool \
           libvirt-devel \
           libvirt-glib-devel \
           libxml2 \
           libxml2-devel \
           make \
           ninja \
           pkgconfig \
           python3-pip \
           python3-setuptools \
           python3-wheel \
           rpm-build \
           spice-gtk-devel \
           vte-devel && \
    zypper clean --all && \
    rpm -qa | sort > /packages.txt && \
    mkdir -p /usr/libexec/ccache-wrappers && \
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/cc && \
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/gcc

RUN /usr/bin/pip3 install meson==0.56.0

ENV CCACHE_WRAPPERSDIR "/usr/libexec/ccache-wrappers"
ENV LANG "en_US.UTF-8"
ENV MAKE "/usr/bin/make"
ENV NINJA "/usr/bin/ninja"
