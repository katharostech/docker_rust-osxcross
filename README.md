# Docker + Rust + OSXCross

[![Build Status](https://cloud.drone.io/api/badges/katharostech/docker_rust-osxcross/status.svg)](https://cloud.drone.io/katharostech/docker_rust-osxcross)

Rust Docker image with OSXCross installed for cross compiling Rust projects for OSX.

This image is mean primarily to build off of for your builds. While it does contain the tools installed, it does not have any scripts to run the actual build.

This container is built off of the `rust:latest` Docker image, but this image will not be rebuilt automatically when the `rust:latest` image is. It is recommended that you use rustup in your build script to update/install the version of Rust that you need when using this image.
