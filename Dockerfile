FROM ghcr.io/tiiuae/fog-ros-baseimage:builder-39ace51

ARG BUILD_NUMBER

COPY . /main_ws/src/

# this:
# 1) builds the application
# 2) packages the application as .deb in /main_ws/

RUN /packaging/build.sh -b ${BUILD_NUMBER}

RUN mkdir -p /output_dir
RUN cp /main_ws/ros-*-fog-msgs_*_amd64.deb /output_dir/
