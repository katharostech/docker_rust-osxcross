FROM rust:latest

RUN \
  apt-get update && \
  apt-get install -y clang cmake cpio make libssl-dev lzma-dev libxml2-dev && \
  rustup target add x86_64-apple-darwin && \
  mkdir -p /build && \
  cd /build && \
  git clone --depth 1 https://github.com/tpoechtrager/osxcross.git && \
  cd /build/osxcross/tarballs && \
  wget https://s3.dockerproject.org/darwin/v2/MacOSX10.11.sdk.tar.xz && \
  cd /build/osxcross && \
  UNATTENDED=yes OSX_VERSION_MIN=10.7 ./build.sh && \
  echo 'PATH="$PATH:/build/osxcross/target/bin"' >> /etc/profile && \
  ln -s /build/osxcross/target/SDK/MacOSX10.11.sdk/System/ /System