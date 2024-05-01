# SDL-cross-deps

This repository contains C header and source files required to cross-compile SDL3 for

- x86_64-windows-gnu
- x86_64-linux-gnu

|Subdir|Contents|
|-|-|
|opengl|OpenGL, OpenGL ES 1.1/2.0 and EGL headers|
|vulkan|Vulkan headers|
|wayland|Wayland, libdecor and libxkbcommon headers, plus glue code generated from protocols used by SDL3's Wayland video backend|
|x11|X11, GLX and XCB headers required by SDL3's X11 video backend|
|kmsdrm|DRM and GBM headers required by SDL3's KMS/DRM video backend|
|libusb|libusb headers|
|pulseaudio|PulseAudio headers|
|pipewire|PipeWire headers|
|alsa|ALSA headers|
|sndio|sndio headers|
|jack|JACK headers|
|corelinux|D-bus, IBus, GLib, libudev and various other headers required by SDL3 on Linux|

See `vendor.sh` for details on whence/how files are sourced/generated. You can also run this script to redownload/regenerate all files (for example, if you wish to independently verify that the files have not been tampered with).
