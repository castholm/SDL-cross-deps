#!/usr/bin/env bash
set -euxo pipefail

MESA_URL=https://gitlab.freedesktop.org/mesa/mesa.git
MESA_REV=c659c7e6607213abafaee3b4aed19823feab91ca # mesa-24.0.6

OPENGL_REGISTRY_URL=https://github.com/KhronosGroup/OpenGL-Registry.git
OPENGL_REGISTRY_REV=6fdfecda943798736fae0f3292528ece1c1b001c # 2024-03-28

EGL_REGISTRY_URL=https://github.com/KhronosGroup/EGL-Registry.git
EGL_REGISTRY_REV=7db3005d4c2cb439f129a0adc931f3274f9019e6 # 2024-01-25

VULKAN_HEADERS_URL=https://github.com/KhronosGroup/Vulkan-Headers.git
VULKAN_HEADERS_REV=eaa319dade959cb61ed2229c8ea42e307cc8f8b3 # v1.3.283

WAYLAND_URL=https://gitlab.freedesktop.org/wayland/wayland.git
WAYLAND_REV=b2649cb3ee6bd70828a17e50beb16591e6066288 # 1.22.0

WAYLAND_PROTOCOLS_URL=https://gitlab.freedesktop.org/wayland/wayland-protocols.git
WAYLAND_PROTOCOLS_REV=24e612f7d735c014c28e3934440c90c240b3bb9a # 1.36

PLASMA_WAYLAND_PROTOCOLS_URL=https://invent.kde.org/libraries/plasma-wayland-protocols.git
PLASMA_WAYLAND_PROTOCOLS_REV=2ac008b14c0527d4212e50ee6e4fd6ad84dd8933 # v1.11.1

LIBDECOR_URL=https://gitlab.freedesktop.org/libdecor/libdecor.git
LIBDECOR_REV=7807ae3480f5c6a37c5e8505d94af1e764aaf704 # 0.2.2

LIBXKBCOMMON_URL=https://github.com/xkbcommon/libxkbcommon.git
LIBXKBCOMMON_REV=7a31e3585edf78be281559377e26d15f8c4bc655 # xkbcommon-1.7.0

LIBX11_URL=https://gitlab.freedesktop.org/xorg/lib/libx11.git
LIBX11_REV=a465588218c1643eedc35b3c24409cb775454eee # libX11-1.8.9

XORGPROTO_URL=https://gitlab.freedesktop.org/xorg/proto/xorgproto.git
XORGPROTO_REV=67469711055522b8adb2d795b01e7ba98cb8816c # xorgproto-2024.1

LIBXEXT_URL=https://gitlab.freedesktop.org/xorg/lib/libxext.git
LIBXEXT_REV=3826a58d190c2d8093d3586cb33867668cbb4553 # libXext-1.3.6

LIBXCURSOR_URL=https://gitlab.freedesktop.org/xorg/lib/libxcursor.git
LIBXCURSOR_REV=09617bcc9a0f1b5072212da5f8fede92ab85d157 # libXcursor-1.2.2

LIBXFIXES_URL=https://gitlab.freedesktop.org/xorg/lib/libxfixes.git
LIBXFIXES_REV=c1cab28e27dd1c5a81394965248b57e490ccf2ca # libXfixes-6.0.1

LIBXI_URL=https://gitlab.freedesktop.org/xorg/lib/libxi.git
LIBXI_REV=3a7503ec7703f10de17c622ea22b7bff736cea74 # libXi-1.8.1

LIBXRANDR_URL=https://gitlab.freedesktop.org/xorg/lib/libxrandr.git
LIBXRANDR_REV=512bf0b15b5597c721ff8c61083616ca9040fa72 # libXrandr-1.5.4

LIBXRENDER_URL=https://gitlab.freedesktop.org/xorg/lib/libxrender.git
LIBXRENDER_REV=e5e23272394c90731debd7e18dd167e8c25b5c15 # libXrender-0.9.11

LIBXSCRNSAVER_URL=https://gitlab.freedesktop.org/xorg/lib/libxscrnsaver.git
LIBXSCRNSAVER_REV=34f3f72b88c0a0a10d618e9dfbc88474ae5ce880 # libXScrnSaver-1.2.4

LIBXCB_URL=https://gitlab.freedesktop.org/xorg/lib/libxcb.git
LIBXCB_REV=622152ee42a310876f10602601206954b8d0613e # libxcb-1.17.0

XCBPROTO_URL=https://gitlab.freedesktop.org/xorg/proto/xcbproto.git
XCBPROTO_REV=77d7fc04da729ddc5ed4aacf30253726fac24dca # xcb-proto-1.17.0

DRM_URL=https://gitlab.freedesktop.org/mesa/drm.git
DRM_REV=75254bf2390c10644ffb35a90fc8f18f196f9f0c # libdrm-2.4.120

LIBUSB_URL=https://github.com/libusb/libusb.git
LIBUSB_REV=d52e355daa09f17ce64819122cb067b8a2ee0d4b # v1.0.27

PULSEAUDIO_URL=https://gitlab.freedesktop.org/pulseaudio/pulseaudio.git
PULSEAUDIO_REV=1f020889c9aa44ea0f63d7222e8c2b62c3f45f68 # v17.0

PIPEWIRE_URL=https://gitlab.freedesktop.org/pipewire/pipewire.git
PIPEWIRE_REV=a2287be601710eea0d073261223ec34b92384c8a # 1.0.5

ALSA_LIB_URL=https://github.com/alsa-project/alsa-lib.git
ALSA_LIB_REV=7e3a3c2b0a092d0f568ba3c98365030dd91cc877 # v1.2.11

SNDIO_URL=https://github.com/ratchov/sndio.git
SNDIO_REV=584d41515a981818f6f60e9d9dca97af3657a640 # v1.9.0

JACK2_URL=https://github.com/jackaudio/jack2.git
JACK2_REV=4f58969432339a250ce87fe855fb962c67d00ddb # v1.9.22

DBUS_URL=https://gitlab.freedesktop.org/dbus/dbus.git
DBUS_REV=fa05c11a0047f2927e76d08f9fcf6638ded7ff50 # dbus-1.14.10

IBUS_URL=https://github.com/ibus/ibus.git
IBUS_REV=0ad8e77bd36545974ad8acd0a5283cf72bc7c8ad # 1.5.29

GLIB_URL=https://gitlab.gnome.org/GNOME/glib.git
GLIB_REV=763cc3b238398614c20069fd67642730e3a6519b # 2.80.0

SYSTEMD_URL=https://github.com/systemd/systemd.git
SYSTEMD_REV=db11bab38ccf1ed257f310d29070843d4c58ea01 # v255

TMP_PREFIX=_tmp

build_zig_preamble() {
	cat <<- 'EOF'
		const std = @import("std");
		pub fn build(b: *std.Build) void {
		    _ = b;
		}
	EOF
}

repo_ensure_cloned() {
	repo=$1

	repo_url_var="${repo}_URL"
	repo_url="${!repo_url_var}"
	declare -g "${repo}_DIR=$TMP_PREFIX/$(basename -s.git "$repo_url")"
	repo_dir_var="${repo}_DIR"
	repo_dir="${!repo_dir_var}"
	if [ ! -d "$repo_dir" ]; then
		rm -rf "$repo_dir"
		mkdir -p "$repo_dir"
		pushd "$repo_dir"
		git init -q
		repo_rev_var="${repo}_REV"
		repo_rev="${!repo_rev_var}"
		git fetch "$repo_url" "$repo_rev" --depth 1
		git checkout -q FETCH_HEAD
		popd
	fi
}

repo_copy() {
	repo=$1; src=("${@:2:$#-2}"); dst="${*:$#}"

	repo_ensure_cloned "$repo"
	repo_dir_var="${repo}_DIR"
	repo_dir="${!repo_dir_var}"
	mkdir -p "$dst"
	cp "${src[@]/#/$repo_dir/}" "$dst/"
}

opengl() {
	prefix=opengl
	rm -rf "$prefix"

	# Prefer headers from OpenGL-Registry over Mesa when available.
	# OpenGl-Registry is the canonical source for OpenGL headers except for gl.h, glx.h and wgl.h.

	headers=(
		include/GL/gl.h
	)
	repo_copy MESA "${headers[@]}" "$prefix/include/GL"

	headers=(
		api/GL/glcorearb.h
		api/GL/glext.h
	)
	repo_copy OPENGL_REGISTRY "${headers[@]}" "$prefix/include/GL"

	headers=(
		api/GLES/egl.h
		api/GLES/gl.h
		api/GLES/glext.h
		api/GLES/glplatform.h
	)
	repo_copy OPENGL_REGISTRY "${headers[@]}" "$prefix/include/GLES"

	headers=(
		api/GLES2/gl2.h
		api/GLES2/gl2ext.h
		api/GLES2/gl2platform.h
	)
	repo_copy OPENGL_REGISTRY "${headers[@]}" "$prefix/include/GLES2"

	headers=(
		api/EGL/egl.h
		api/EGL/eglext.h
		api/EGL/eglplatform.h
	)
	repo_copy EGL_REGISTRY "${headers[@]}" "$prefix/include/EGL"

	headers=(
		api/KHR/khrplatform.h
	)
	repo_copy EGL_REGISTRY "${headers[@]}" "$prefix/include/KHR"
}

vulkan() {
	prefix=vulkan
	rm -rf "$prefix"

	headers=(
		include/vulkan/vk_icd.h
		include/vulkan/vk_layer.h
		include/vulkan/vk_platform.h
		include/vulkan/vulkan.h
		include/vulkan/vulkan_android.h
		include/vulkan/vulkan_beta.h
		include/vulkan/vulkan_core.h
		include/vulkan/vulkan_directfb.h
		include/vulkan/vulkan_fuchsia.h
		include/vulkan/vulkan_ggp.h
		include/vulkan/vulkan_ios.h
		include/vulkan/vulkan_macos.h
		include/vulkan/vulkan_metal.h
		include/vulkan/vulkan_screen.h
		include/vulkan/vulkan_vi.h
		include/vulkan/vulkan_wayland.h
		include/vulkan/vulkan_win32.h
		include/vulkan/vulkan_xcb.h
		include/vulkan/vulkan_xlib_xrandr.h
		include/vulkan/vulkan_xlib.h
	)
	repo_copy VULKAN_HEADERS "${headers[@]}" "$prefix/include/vulkan"

	headers=(
		include/vk_video/vulkan_video_codec_av1std.h
		include/vk_video/vulkan_video_codec_av1std_decode.h
		include/vk_video/vulkan_video_codec_h264std.h
		include/vk_video/vulkan_video_codec_h264std_decode.h
		include/vk_video/vulkan_video_codec_h264std_encode.h
		include/vk_video/vulkan_video_codec_h265std.h
		include/vk_video/vulkan_video_codec_h265std_decode.h
		include/vk_video/vulkan_video_codec_h265std_encode.h
		include/vk_video/vulkan_video_codecs_common.h
	)
	repo_copy VULKAN_HEADERS "${headers[@]}" "$prefix/include/vk_video"
}

wayland() {
	prefix=wayland
	rm -rf "$prefix"

	headers=(
		src/wayland-util.h
		src/wayland-server.h
		src/wayland-server-core.h
		src/wayland-client.h
		src/wayland-client-core.h

		cursor/wayland-cursor.h

		egl/wayland-egl.h
		egl/wayland-egl-core.h
		egl/wayland-egl-backend.h
	)
	repo_copy WAYLAND "${headers[@]}" "$prefix/include"

	wayland_version=1.22.0
	wayland_version_parts=(${wayland_version//./ })
	sed "$WAYLAND_DIR/src/wayland-version.h.in" \
		-e "s/@WAYLAND_VERSION_MAJOR@/${wayland_version_parts[0]}/g" \
		-e "s/@WAYLAND_VERSION_MINOR@/${wayland_version_parts[1]}/g" \
		-e "s/@WAYLAND_VERSION_MICRO@/${wayland_version_parts[2]}/g" \
		-e "s/@WAYLAND_VERSION@/$wayland_version/g" \
	> "$prefix/include/wayland-version.h"

	wayland-scanner server-header "$WAYLAND_DIR/protocol/wayland.xml" "$prefix/include/wayland-server-protocol.h"
	wayland-scanner client-header "$WAYLAND_DIR/protocol/wayland.xml" "$prefix/include/wayland-client-protocol.h"

	gen_code() {
		xml=$1
		protocol_name="$(basename "$xml" .xml)"
		mkdir -p "$prefix/src"
		wayland-scanner client-header "$xml" "$prefix/src/$protocol_name-client-protocol.h"
		wayland-scanner private-code "$xml" "$prefix/src/$protocol_name-protocol.c"
	}

	gen_code "$WAYLAND_DIR/protocol/wayland.xml"

	repo_ensure_cloned WAYLAND_PROTOCOLS

	gen_code "$WAYLAND_PROTOCOLS_DIR/stable/tablet/tablet-v2.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/stable/viewporter/viewporter.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/stable/xdg-shell/xdg-shell.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/staging/cursor-shape/cursor-shape-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/staging/fractional-scale/fractional-scale-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/staging/xdg-activation/xdg-activation-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/staging/xdg-dialog/xdg-dialog-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/idle-inhibit/idle-inhibit-unstable-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/input-timestamps/input-timestamps-unstable-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/keyboard-shortcuts-inhibit/keyboard-shortcuts-inhibit-unstable-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/pointer-constraints/pointer-constraints-unstable-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/primary-selection/primary-selection-unstable-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/relative-pointer/relative-pointer-unstable-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/text-input/text-input-unstable-v3.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/xdg-decoration/xdg-decoration-unstable-v1.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/xdg-foreign/xdg-foreign-unstable-v2.xml"
	gen_code "$WAYLAND_PROTOCOLS_DIR/unstable/xdg-output/xdg-output-unstable-v1.xml"

	repo_ensure_cloned PLASMA_WAYLAND_PROTOCOLS

	gen_code "$PLASMA_WAYLAND_PROTOCOLS_DIR/src/protocols/kde-output-order-v1.xml"

	curl --output-dir "$prefix/include/" -LZ \
		-O "https://gitlab.freedesktop.org/libdecor/libdecor/-/raw/$LIBDECOR_REV/src/libdecor.h"

	headers=(
		include/xkbcommon/xkbcommon.h
		include/xkbcommon/xkbcommon-compat.h
		include/xkbcommon/xkbcommon-compose.h
		include/xkbcommon/xkbcommon-keysyms.h
		include/xkbcommon/xkbcommon-names.h
	)
	repo_copy LIBXKBCOMMON "${headers[@]}" "$prefix/include/xkbcommon"

	libdecor_version=0.2.2
	libdecor_version_parts=(${libdecor_version//./ })
	cat >> build.zig <<- EOF
		pub const wayland_client_soname = "libwayland-client.so.0";
		pub const wayland_cursor_soname = "libwayland-cursor.so.0";
		pub const wayland_egl_soname = "libwayland-egl.so.1";
		pub const wayland_c_files = [_][]const u8{
		    "src/cursor-shape-v1-protocol.c",
		    "src/fractional-scale-v1-protocol.c",
		    "src/idle-inhibit-unstable-v1-protocol.c",
		    "src/input-timestamps-unstable-v1-protocol.c",
		    "src/kde-output-order-v1-protocol.c",
		    "src/keyboard-shortcuts-inhibit-unstable-v1-protocol.c",
		    "src/pointer-constraints-unstable-v1-protocol.c",
		    "src/primary-selection-unstable-v1-protocol.c",
		    "src/relative-pointer-unstable-v1-protocol.c",
		    "src/tablet-v2-protocol.c",
		    "src/text-input-unstable-v3-protocol.c",
		    "src/viewporter-protocol.c",
		    "src/wayland-protocol.c",
		    "src/xdg-activation-v1-protocol.c",
		    "src/xdg-decoration-unstable-v1-protocol.c",
		    "src/xdg-dialog-v1-protocol.c",
		    "src/xdg-foreign-unstable-v2-protocol.c",
		    "src/xdg-output-unstable-v1-protocol.c",
		    "src/xdg-shell-protocol.c",
		};
		pub const libdecor_soname = "libdecor-0.so.0";
		pub const libdecor_version: std.SemanticVersion = .{ .major = ${libdecor_version_parts[0]}, .minor = ${libdecor_version_parts[1]}, .patch = ${libdecor_version_parts[2]} };
		pub const xkbcommon_soname = "libxkbcommon.so.0";
	EOF
}

x11() {
	prefix=x11
	rm -rf "$prefix"

	headers=(
		include/X11/XKBlib.h
		include/X11/Xcms.h
		include/X11/Xlib.h
		include/X11/Xlibint.h
		include/X11/Xlocale.h
		include/X11/Xresource.h
		include/X11/Xutil.h
		include/X11/cursorfont.h
		include/X11/Xregion.h
		include/X11/ImUtil.h
		include/X11/Xlib-xcb.h
	)
	repo_copy LIBX11 "${headers[@]}" "$prefix/include/X11"

	headers=(
		include/X11/extensions/XKBgeom.h
	)
	repo_copy LIBX11 "${headers[@]}" "$prefix/include/X11/extensions"

	sed "$LIBX11_DIR/include/X11/XlibConf.h.in" \
		-e 's/#undef XTHREADS/#define XTHREADS 1/' \
		-e 's/#undef XUSE_MTSAFE_API/#define XUSE_MTSAFE_API 1/' \
	> "$prefix/include/X11/XlibConf.h"

	headers=(
		include/X11/ap_keysym.h
		include/X11/DECkeysym.h
		include/X11/HPkeysym.h
		include/X11/keysymdef.h
		include/X11/keysym.h
		include/X11/Sunkeysym.h
		include/X11/Xalloca.h
		include/X11/Xarch.h
		include/X11/Xatom.h
		include/X11/Xdefs.h
		include/X11/XF86keysym.h
		include/X11/Xfuncs.h
		include/X11/Xfuncproto.h
		include/X11/X.h
		include/X11/Xmd.h
		include/X11/Xosdefs.h
		include/X11/Xos.h
		include/X11/Xos_r.h
		include/X11/Xproto.h
		include/X11/Xprotostr.h
		include/X11/Xthreads.h
		include/X11/Xw32defs.h
		include/X11/XWDFile.h
		include/X11/Xwindows.h
		include/X11/Xwinsock.h
	)
	repo_copy XORGPROTO "${headers[@]}" "$prefix/include/X11"

	headers=(
		include/X11/extensions/ag.h
		include/X11/extensions/agproto.h
		include/X11/extensions/applewmconst.h
		include/X11/extensions/applewmproto.h
		include/X11/extensions/bigreqsproto.h
		include/X11/extensions/bigreqstr.h
		include/X11/extensions/composite.h
		include/X11/extensions/compositeproto.h
		include/X11/extensions/cup.h
		include/X11/extensions/cupproto.h
		include/X11/extensions/damageproto.h
		include/X11/extensions/damagewire.h
		include/X11/extensions/dbe.h
		include/X11/extensions/dbeproto.h
		include/X11/extensions/dmx.h
		include/X11/extensions/dmxproto.h
		include/X11/extensions/dpmsconst.h
		include/X11/extensions/dpmsproto.h
		include/X11/extensions/dri2proto.h
		include/X11/extensions/dri2tokens.h
		include/X11/extensions/dri3proto.h
		include/X11/extensions/EVI.h
		include/X11/extensions/EVIproto.h
		include/X11/extensions/ge.h
		include/X11/extensions/geproto.h
		include/X11/extensions/lbx.h
		include/X11/extensions/lbxproto.h
		include/X11/extensions/mitmiscconst.h
		include/X11/extensions/mitmiscproto.h
		include/X11/extensions/multibufconst.h
		include/X11/extensions/multibufproto.h
		include/X11/extensions/panoramiXproto.h
		include/X11/extensions/presentproto.h
		include/X11/extensions/presenttokens.h
		include/X11/extensions/randr.h
		include/X11/extensions/randrproto.h
		include/X11/extensions/recordconst.h
		include/X11/extensions/recordproto.h
		include/X11/extensions/recordstr.h
		include/X11/extensions/render.h
		include/X11/extensions/renderproto.h
		include/X11/extensions/saver.h
		include/X11/extensions/saverproto.h
		include/X11/extensions/secur.h
		include/X11/extensions/securproto.h
		include/X11/extensions/shapeconst.h
		include/X11/extensions/shapeproto.h
		include/X11/extensions/shapestr.h
		include/X11/extensions/shm.h
		include/X11/extensions/shmproto.h
		include/X11/extensions/shmstr.h
		include/X11/extensions/syncconst.h
		include/X11/extensions/syncproto.h
		include/X11/extensions/syncstr.h
		include/X11/extensions/xcmiscproto.h
		include/X11/extensions/xcmiscstr.h
		include/X11/extensions/xf86bigfont.h
		include/X11/extensions/xf86bigfproto.h
		include/X11/extensions/xf86bigfstr.h
		include/X11/extensions/xf86dga1const.h
		include/X11/extensions/xf86dga1proto.h
		include/X11/extensions/xf86dga1str.h
		include/X11/extensions/xf86dgaconst.h
		include/X11/extensions/xf86dga.h
		include/X11/extensions/xf86dgaproto.h
		include/X11/extensions/xf86dgastr.h
		include/X11/extensions/xf86vm.h
		include/X11/extensions/xf86vmproto.h
		include/X11/extensions/xf86vmstr.h
		include/X11/extensions/xfixesproto.h
		include/X11/extensions/xfixeswire.h
		include/X11/extensions/XI2.h
		include/X11/extensions/XI2proto.h
		include/X11/extensions/XI.h
		include/X11/extensions/XIproto.h
		include/X11/extensions/XKB.h
		include/X11/extensions/XKBproto.h
		include/X11/extensions/XKBsrv.h
		include/X11/extensions/XKBstr.h
		include/X11/extensions/XResproto.h
		include/X11/extensions/xtestconst.h
		include/X11/extensions/xtestext1const.h
		include/X11/extensions/xtestext1proto.h
		include/X11/extensions/xtestproto.h
		include/X11/extensions/Xv.h
		include/X11/extensions/XvMC.h
		include/X11/extensions/XvMCproto.h
		include/X11/extensions/Xvproto.h
		include/X11/extensions/xwaylandproto.h
	)
	repo_copy XORGPROTO "${headers[@]}" "$prefix/include/X11/extensions"

	headers=(
		include/X11/dri/xf86dri.h
		include/X11/dri/xf86driproto.h
		include/X11/dri/xf86dristr.h
	)
	repo_copy XORGPROTO "${headers[@]}" "$prefix/include/X11/dri"

	headers=(
		include/X11/fonts/font.h
		include/X11/fonts/fontproto.h
		include/X11/fonts/fontstruct.h
		include/X11/fonts/FS.h
		include/X11/fonts/fsmasks.h
		include/X11/fonts/FSproto.h
	)
	repo_copy XORGPROTO "${headers[@]}" "$prefix/include/X11/fonts"

	headers=(
		include/GL/glx.h
	)
	repo_copy MESA "${headers[@]}" "$prefix/include/GL"

	headers=(
		api/GL/glxext.h
	)
	repo_copy OPENGL_REGISTRY "${headers[@]}" "$prefix/include/GL"

	headers=(
		include/GL/glxint.h
		include/GL/glxmd.h
		include/GL/glxproto.h
		include/GL/glxtokens.h
	)
	repo_copy XORGPROTO "${headers[@]}" "$prefix/include/GL"

	headers=(
		include/GL/internal/glcore.h
	)
	repo_copy XORGPROTO "${headers[@]}" "$prefix/include/GL/internal"

	sed "$XORGPROTO_DIR/include/X11/Xpoll.h.in" \
		-e 's/@USE_FDS_BITS@/__fds_bits/g' \
	> "$prefix/include/X11/Xpoll.h"

	headers=(
		include/X11/extensions/dpms.h
		include/X11/extensions/extutil.h
		include/X11/extensions/MITMisc.h
		include/X11/extensions/multibuf.h
		include/X11/extensions/security.h
		include/X11/extensions/shape.h
		include/X11/extensions/sync.h
		include/X11/extensions/Xag.h
		include/X11/extensions/Xcup.h
		include/X11/extensions/Xdbe.h
		include/X11/extensions/XEVI.h
		include/X11/extensions/Xext.h
		include/X11/extensions/Xge.h
		include/X11/extensions/XLbx.h
		include/X11/extensions/XShm.h
		include/X11/extensions/xtestext1.h
	)
	repo_copy LIBXEXT "${headers[@]}" "$prefix/include/X11/extensions"

	xcursor_version=1.2.2
	xcursor_version_parts=(${xcursor_version//./ })
	mkdir -p "$prefix/include/X11/Xcursor"
	curl -L "https://gitlab.freedesktop.org/xorg/lib/libxcursor/-/raw/$LIBXCURSOR_REV/include/X11/Xcursor/Xcursor.h.in" \
	| sed \
		-e "s/#undef XCURSOR_LIB_MAJOR/#define XCURSOR_LIB_MAJOR ${xcursor_version_parts[0]}/" \
		-e "s/#undef XCURSOR_LIB_MINOR/#define XCURSOR_LIB_MINOR ${xcursor_version_parts[1]}/" \
		-e "s/#undef XCURSOR_LIB_REVISION/#define XCURSOR_LIB_REVISION ${xcursor_version_parts[2]}/" \
	> "$prefix/include/X11/Xcursor/Xcursor.h"

	curl --output-dir "$prefix/include/X11/extensions/" -LZ \
		-O "https://gitlab.freedesktop.org/xorg/lib/libxfixes/-/raw/$LIBXFIXES_REV/include/X11/extensions/Xfixes.h" \
		-O "https://gitlab.freedesktop.org/xorg/lib/libxi/-/raw/$LIBXI_REV/include/X11/extensions/XInput.h" \
		-O "https://gitlab.freedesktop.org/xorg/lib/libxi/-/raw/$LIBXI_REV/include/X11/extensions/XInput2.h" \
		-O "https://gitlab.freedesktop.org/xorg/lib/libxrandr/-/raw/$LIBXRANDR_REV/include/X11/extensions/Xrandr.h" \
		-O "https://gitlab.freedesktop.org/xorg/lib/libxrender/-/raw/$LIBXRENDER_REV/include/X11/extensions/Xrender.h" \
		-O "https://gitlab.freedesktop.org/xorg/lib/libxscrnsaver/-/raw/$LIBXSCRNSAVER_REV/include/X11/extensions/scrnsaver.h"

	headers=(
		src/xcb.h
		src/xcbext.h
	)
	repo_copy LIBXCB "${headers[@]}" "$prefix/include/xcb"

	repo_ensure_cloned XCBPROTO

	# xcb.h depends on the generated xproto.h
	c_client_py="$PWD/$LIBXCB_DIR/src/c_client.py"
	pushd "$XCBPROTO_DIR"
	./autogen.sh
	make
	make DESTDIR="$PWD/_out" install
	pushd _out
	python3 "$c_client_py" -c _ -l _ -s _ -p usr/local/lib/python3.*/site-packages/ ../src/xproto.xml
	popd
	popd
	mkdir -p "$prefix/include/xcb"
	cp "$XCBPROTO_DIR/_out/xproto.h" "$prefix/include/xcb/"

	cat >> build.zig <<- 'EOF'
		pub const x11_soname = "libX11.so.6";
		pub const xext_soname = "libXext.so.6";
		pub const xcursor_soname = "libXcursor.so.1";
		pub const xfixes_soname = "libXfixes.so.3";
		pub const xi_soname = "libXi.so.6";
		pub const xrandr_soname = "libXrandr.so.2";
		pub const xss_soname = "libXss.so.1";
	EOF
}

kmsdrm() {
	prefix=kmsdrm
	rm -rf "$prefix"

	headers=(
		libsync.h
		xf86drm.h
		xf86drmMode.h
	)
	repo_copy DRM "${headers[@]}" "$prefix/include"

	# The canonical include path for these headers is <drm.h>, not <libdrm/drm.h>
	headers=(
		include/drm/drm.h
		include/drm/drm_fourcc.h
		include/drm/drm_mode.h
		include/drm/drm_sarea.h
		include/drm/i915_drm.h
		include/drm/mach64_drm.h
		include/drm/mga_drm.h
		include/drm/msm_drm.h
		include/drm/nouveau_drm.h
		include/drm/qxl_drm.h
		include/drm/r128_drm.h
		include/drm/radeon_drm.h
		include/drm/amdgpu_drm.h
		include/drm/savage_drm.h
		include/drm/sis_drm.h
		include/drm/tegra_drm.h
		include/drm/vc4_drm.h
		include/drm/via_drm.h
		include/drm/virtgpu_drm.h
	)
	repo_copy DRM "${headers[@]}" "$prefix/include"

	headers=(
		src/gbm/main/gbm.h
	)
	repo_copy MESA "${headers[@]}" "$prefix/include"

	cat >> build.zig <<- 'EOF'
		pub const drm_soname = "libdrm.so.2";
		pub const gbm_soname = "libgbm.so.1";
	EOF
}

libusb() {
	prefix=libusb
	rm -rf "$prefix"

	mkdir -p "$prefix/include"
	curl --output-dir "$prefix/include/" -LZ \
		-O "https://raw.githubusercontent.com/libusb/libusb/$LIBUSB_REV/libusb/libusb.h"

	cat >> build.zig <<- 'EOF'
		pub const libusb_soname = "libusb-1.0.so.0";
	EOF
}

pulseaudio() {
	prefix=pulseaudio
	rm -rf "$prefix"

	headers=(
		src/pulse/cdecl.h
		src/pulse/channelmap.h
		src/pulse/context.h
		src/pulse/def.h
		src/pulse/direction.h
		src/pulse/error.h
		src/pulse/ext-device-manager.h
		src/pulse/ext-device-restore.h
		src/pulse/ext-stream-restore.h
		src/pulse/format.h
		src/pulse/gccmacro.h
		src/pulse/introspect.h
		src/pulse/mainloop-api.h
		src/pulse/mainloop-signal.h
		src/pulse/mainloop.h
		src/pulse/operation.h
		src/pulse/proplist.h
		src/pulse/pulseaudio.h
		src/pulse/rtclock.h
		src/pulse/sample.h
		src/pulse/scache.h
		src/pulse/stream.h
		src/pulse/subscribe.h
		src/pulse/thread-mainloop.h
		src/pulse/timeval.h
		src/pulse/utf8.h
		src/pulse/util.h
		src/pulse/volume.h
		src/pulse/xmalloc.h

		src/pulse/glib-mainloop.h

		src/pulse/simple.h
	)
	repo_copy PULSEAUDIO "${headers[@]}" "$prefix/include/pulse"

	pulseaudio_version=17.0
	pulseaudio_version_parts=(${pulseaudio_version//./ })
	pulseaudio_api_version=12
	pulseaudio_protocol_version=35
	sed "$PULSEAUDIO_DIR/src/pulse/version.h.in" \
		-e "s/@PA_MAJOR@/${pulseaudio_version_parts[0]}/g" \
		-e "s/@PA_MINOR@/${pulseaudio_version_parts[1]}/g" \
		-e "s/@PA_API_VERSION@/$pulseaudio_api_version/g" \
		-e "s/@PA_PROTOCOL_VERSION@/$pulseaudio_protocol_version/g" \
	> "$prefix/include/pulse/version.h"

	cat >> build.zig <<- 'EOF'
		pub const pulseaudio_soname = "libpulse.so.0";
	EOF
}

pipewire() {
	prefix=pipewire
	rm -rf "$prefix"

	headers=(
		src/pipewire/array.h
		src/pipewire/buffers.h
		src/pipewire/impl-core.h
		src/pipewire/impl-client.h
		src/pipewire/client.h
		src/pipewire/conf.h
		src/pipewire/context.h
		src/pipewire/control.h
		src/pipewire/core.h
		src/pipewire/device.h
		src/pipewire/impl-device.h
		src/pipewire/data-loop.h
		src/pipewire/factory.h
		src/pipewire/impl-factory.h
		src/pipewire/filter.h
		src/pipewire/global.h
		src/pipewire/keys.h
		src/pipewire/impl.h
		src/pipewire/i18n.h
		src/pipewire/impl-link.h
		src/pipewire/link.h
		src/pipewire/log.h
		src/pipewire/loop.h
		src/pipewire/main-loop.h
		src/pipewire/map.h
		src/pipewire/mem.h
		src/pipewire/impl-metadata.h
		src/pipewire/impl-module.h
		src/pipewire/module.h
		src/pipewire/impl-node.h
		src/pipewire/node.h
		src/pipewire/permission.h
		src/pipewire/pipewire.h
		src/pipewire/impl-port.h
		src/pipewire/port.h
		src/pipewire/properties.h
		src/pipewire/protocol.h
		src/pipewire/proxy.h
		src/pipewire/resource.h
		src/pipewire/stream.h
		src/pipewire/thread.h
		src/pipewire/thread-loop.h
		src/pipewire/type.h
		src/pipewire/utils.h
		src/pipewire/work-queue.h
	)
	repo_copy PIPEWIRE "${headers[@]}" "$prefix/include/pipewire"

	headers=(
		src/pipewire/extensions/client-node.h
		src/pipewire/extensions/metadata.h
		src/pipewire/extensions/profiler.h
		src/pipewire/extensions/protocol-native.h
		src/pipewire/extensions/session-manager.h
	)
	repo_copy PIPEWIRE "${headers[@]}" "$prefix/include/pipewire/extensions"

	headers=(
		src/pipewire/extensions/session-manager/impl-interfaces.h
		src/pipewire/extensions/session-manager/interfaces.h
		src/pipewire/extensions/session-manager/introspect.h
		src/pipewire/extensions/session-manager/introspect-funcs.h
		src/pipewire/extensions/session-manager/keys.h
	)
	repo_copy PIPEWIRE "${headers[@]}" "$prefix/include/pipewire/extensions/session-manager"

	pipewire_version=1.0.5
	pipewire_version_parts=(${pipewire_version//./ })
	pipewire_api_version=0.3
	sed "$PIPEWIRE_DIR/src/pipewire/version.h.in" \
		-e "s/@PIPEWIRE_VERSION_MAJOR@/${pipewire_version_parts[0]}/g" \
		-e "s/@PIPEWIRE_VERSION_MINOR@/${pipewire_version_parts[1]}/g" \
		-e "s/@PIPEWIRE_VERSION_MICRO@/${pipewire_version_parts[2]}/g" \
		-e "s/@PIPEWIRE_API_VERSION@/\"$pipewire_api_version\"/g" \
	> "$prefix/include/pipewire/version.h"

	mkdir -p "$prefix/include/spa"
	cp -r "$PIPEWIRE_DIR/spa/include/spa/"{buffer,control,debug,graph,interfaces,monitor,node,param,pod,support,utils} "$prefix/include/spa/"

	cat >> build.zig <<- 'EOF'
		pub const pipewire_soname = "libpipewire-0.3.so.0";
	EOF
}

alsa() {
	prefix=alsa
	rm -rf "$prefix"

	# alisp.h is not included by default
	headers=(
		include/asoundef.h
		include/global.h
		include/input.h
		include/output.h
		include/error.h
		include/conf.h
		include/control.h

		include/control_plugin.h

		include/control_external.h

		include/pcm.h
		include/pcm_old.h
		include/timer.h

		include/pcm_plugin.h

		include/pcm_rate.h

		include/pcm_external.h
		include/pcm_extplug.h

		include/pcm_ioplug.h

		include/rawmidi.h
		include/ump.h
		include/ump_msg.h

		include/hwdep.h

		include/mixer.h
		include/mixer_abst.h

		include/seq_event.h
		include/seq.h
		include/seqmid.h
		include/seq_midi_event.h

		include/use-case.h

		include/topology.h
	)
	repo_copy ALSA_LIB "${headers[@]}" "$prefix/include/alsa"

	headers=(
		include/sound/asound_fm.h
		include/sound/hdsp.h
		include/sound/hdspm.h
		include/sound/sb16_csp.h
		include/sound/sscape_ioctl.h
		include/sound/emu10k1.h
		include/sound/asoc.h
		include/sound/tlv.h
		include/sound/type_compat.h
	)
	repo_copy ALSA_LIB "${headers[@]}" "$prefix/include/alsa/sound"

	headers=(
		include/sound/uapi/asound_fm.h
		include/sound/uapi/hdsp.h
		include/sound/uapi/hdspm.h
		include/sound/uapi/sb16_csp.h
		include/sound/uapi/sscape_ioctl.h
		include/sound/uapi/emu10k1.h
		include/sound/uapi/asoc.h
		include/sound/uapi/tlv.h
	)
	repo_copy ALSA_LIB "${headers[@]}" "$prefix/include/alsa/sound/uapi"

	{
		cat "$ALSA_LIB_DIR/include/asoundlib-head.h"
		cat <<- 'EOF'
			#include <endian.h>

			#ifndef DOC_HIDDEN
			#ifndef __GNUC__
			#define __inline__ inline
			#endif
			#endif /* DOC_HIDDEN */

			#include <alsa/asoundef.h>
			#include <alsa/version.h>
			#include <alsa/global.h>
			#include <alsa/input.h>
			#include <alsa/output.h>
			#include <alsa/error.h>
			#include <alsa/conf.h>
			#include <alsa/pcm.h>
			#include <alsa/rawmidi.h>
			#include <alsa/ump.h>
			#include <alsa/timer.h>
			#include <alsa/hwdep.h>
			#include <alsa/control.h>
			#include <alsa/mixer.h>
			#include <alsa/seq_event.h>
			#include <alsa/seq.h>
			#include <alsa/seqmid.h>
			#include <alsa/seq_midi_event.h>
		EOF
		cat "$ALSA_LIB_DIR/include/asoundlib-tail.h"
	} > "$prefix/include/alsa/asoundlib.h"

	alsa_version=1.2.11
	alsa_version_parts=(${alsa_version//./ })
	cat > "$prefix/include/alsa/version.h" <<- EOF
		/*
		 *  version.h
		 */

		#define SND_LIB_MAJOR		${alsa_version_parts[0]} /**< major number of library version */
		#define SND_LIB_MINOR		${alsa_version_parts[1]} /**< minor number of library version */
		#define SND_LIB_SUBMINOR	${alsa_version_parts[2]} /**< subminor number of library version */
		#define SND_LIB_EXTRAVER	1000000 /**< exsedtra version number, used mainly for betas */
		/** library version */
		#define SND_LIB_VER(maj, min, sub) (((maj)<<16)|((min)<<8)|(sub))
		#define SND_LIB_VERSION SND_LIB_VER(SND_LIB_MAJOR, SND_LIB_MINOR, SND_LIB_SUBMINOR)
		/** library version (string) */
		#define SND_LIB_VERSION_STR	\"$alsa_version\"

	EOF

	cat >> build.zig <<- 'EOF'
		pub const alsa_soname = "libasound.so.2";
	EOF
}

sndio() {
	prefix=sndio
	rm -rf "$prefix"

	repo_ensure_cloned SNDIO

	mkdir -p "$prefix/include"
	curl --output-dir "$prefix/include" -LZ \
		-O "https://raw.githubusercontent.com/ratchov/sndio/$SNDIO_REV/libsndio/sndio.h"

	cat >> build.zig <<- 'EOF'
		pub const sndio_soname = "libsndio.so.7";
	EOF
}

jack() {
	prefix=jack
	rm -rf "$prefix"

	# I have no idea wtf is going on in the JACK2 repo...
	# These are the headers installed when installing libjack-dev on Debian.
	# Notably, net.h is absent.
	headers=(
		common/jack/control.h
		common/jack/intclient.h
		common/jack/jack.h
		common/jack/jslist.h
		common/jack/metadata.h
		common/jack/midiport.h
		common/jack/ringbuffer.h
		common/jack/session.h
		common/jack/statistics.h
		common/jack/systemdeps.h
		common/jack/thread.h
		common/jack/transport.h
		common/jack/types.h
		common/jack/uuid.h
		common/jack/weakjack.h
		common/jack/weakmacros.h
	)
	repo_copy JACK2 "${headers[@]}" "$prefix/include/jack"

	cat >> build.zig <<- 'EOF'
		pub const jack_soname = "libjack.so.0";
	EOF
}

linuxcore() {
	prefix=linuxcore
	rm -rf "$prefix"

	headers=(
		dbus/dbus.h
		dbus/dbus-address.h
		dbus/dbus-bus.h
		dbus/dbus-connection.h
		dbus/dbus-errors.h
		dbus/dbus-macros.h
		dbus/dbus-memory.h
		dbus/dbus-message.h
		dbus/dbus-misc.h
		dbus/dbus-pending-call.h
		dbus/dbus-protocol.h
		dbus/dbus-server.h
		dbus/dbus-shared.h
		dbus/dbus-signature.h
		dbus/dbus-syntax.h
		dbus/dbus-threads.h
		dbus/dbus-types.h
	)
	repo_copy DBUS "${headers[@]}" "$prefix/include/dbus"

	# Assume x86_64-linux-gnu
	dbus_version=1.14.10
	dbus_version_parts=(${dbus_version//./ })
	sed "$DBUS_DIR/dbus/dbus-arch-deps.h.in" \
		-e 's/@DBUS_INT64_TYPE@/long/g' \
		-e 's/@DBUS_INT64_CONSTANT@/(val##L)/g' \
		-e 's/@DBUS_UINT64_CONSTANT@/(val##UL)/g' \
		-e 's/@DBUS_INT32_TYPE@/int/g' \
		-e 's/@DBUS_INT16_TYPE@/short/g' \
		-e "s/@DBUS_MAJOR_VERSION@/${dbus_version_parts[0]}/g" \
		-e "s/@DBUS_MINOR_VERSION@/${dbus_version_parts[1]}/g" \
		-e "s/@DBUS_MICRO_VERSION@/${dbus_version_parts[2]}/g" \
		-e "s/@DBUS_VERSION@/$dbus_version/g" \
	> "$prefix/include/dbus/dbus-arch-deps.h"

	headers=(
		src/ibus.h
		src/ibusaccelgroup.h
		src/ibusattribute.h
		src/ibusattrlist.h
		src/ibusbus.h
		src/ibuscomponent.h
		src/ibusconfig.h
		src/ibusconfigservice.h
		src/ibusdebug.h
		src/ibusemoji.h
		src/ibusengine.h
		src/ibusenginedesc.h
		src/ibusenginesimple.h
		src/ibuserror.h
		src/ibusfactory.h
		src/ibushotkey.h
		src/ibusinputcontext.h
		src/ibuskeymap.h
		src/ibuskeys.h
		src/ibuskeysyms-compat.h
		src/ibuskeysyms.h
		src/ibuslookuptable.h
		src/ibusobject.h
		src/ibusobservedpath.h
		src/ibuspanelservice.h
		src/ibusproperty.h
		src/ibusproplist.h
		src/ibusproxy.h
		src/ibusregistry.h
		src/ibusserializable.h
		src/ibusservice.h
		src/ibusshare.h
		src/ibustext.h
		src/ibustypes.h
		src/ibusunicode.h
		src/ibusutil.h
		src/ibusxevent.h
		src/ibusxml.h
	)
	repo_copy IBUS "${headers[@]}" "$prefix/include"

	glib-mkenums --template "$IBUS_DIR/src/ibusenumtypes.h.template" "${headers[@]/#src\//$prefix/include/}" \
	| sed \
		-e 's/i_bus_/ibus_/g' \
		-e 's/I_TYPE_BUS_/IBUS_TYPE_/g' \
	> "$prefix/include/ibusenumtypes.h"

	ibus_version=1.5.29
	ibus_version_parts=(${ibus_version//./ })
	sed "$IBUS_DIR/src/ibusversion.h.in" \
		-e "s/@IBUS_MAJOR_VERSION@/${ibus_version_parts[0]}/g" \
		-e "s/@IBUS_MINOR_VERSION@/${ibus_version_parts[1]}/g" \
		-e "s/@IBUS_MICRO_VERSION@/${ibus_version_parts[2]}/g" \
	> "$prefix/include/ibusversion.h"

	headers=(
		glib/glib.h
		glib/glib-object.h

		glib/glib-unix.h
	)
	repo_copy GLIB "${headers[@]}" "$prefix/include"

	headers=(
		glib/glib-autocleanups.h
		glib/glib-typeof.h
		glib/galloca.h
		glib/garray.h
		glib/gasyncqueue.h
		glib/gatomic.h
		glib/gbacktrace.h
		glib/gbase64.h
		glib/gbitlock.h
		glib/gbookmarkfile.h
		glib/gbytes.h
		glib/gcharset.h
		glib/gchecksum.h
		glib/gconvert.h
		glib/gdataset.h
		glib/gdate.h
		glib/gdatetime.h
		glib/gdir.h
		glib/genviron.h
		glib/gerror.h
		glib/gfileutils.h
		glib/ggettext.h
		glib/ghash.h
		glib/ghmac.h
		glib/ghook.h
		glib/ghostutils.h
		glib/gi18n.h
		glib/gi18n-lib.h
		glib/giochannel.h
		glib/gkeyfile.h
		glib/glist.h
		glib/gmacros.h
		glib/gmain.h
		glib/gmappedfile.h
		glib/gmarkup.h
		glib/gmem.h
		glib/gmessages.h
		glib/gnode.h
		glib/goption.h
		glib/gpathbuf.h
		glib/gpattern.h
		glib/gpoll.h
		glib/gprimes.h
		glib/gqsort.h
		glib/gquark.h
		glib/gqueue.h
		glib/grand.h
		glib/grcbox.h
		glib/grefcount.h
		glib/grefstring.h
		glib/gregex.h
		glib/gscanner.h
		glib/gsequence.h
		glib/gshell.h
		glib/gslice.h
		glib/gslist.h
		glib/gspawn.h
		glib/gstdio.h
		glib/gstrfuncs.h
		glib/gstrvbuilder.h
		glib/gtestutils.h
		glib/gstring.h
		glib/gstringchunk.h
		glib/gthread.h
		glib/gthreadpool.h
		glib/gtimer.h
		glib/gtimezone.h
		glib/gtrashstack.h
		glib/gtree.h
		glib/gtypes.h
		glib/guuid.h
		glib/gunicode.h
		glib/guri.h
		glib/gutils.h
		glib/gvarianttype.h
		glib/gvariant.h
		glib/gversion.h
		glib/gprintf.h
	)
	repo_copy GLIB "${headers[@]}" "$prefix/include/glib"

	headers=(
		glib/deprecated/gallocator.h
		glib/deprecated/gcache.h
		glib/deprecated/gcompletion.h
		glib/deprecated/gmain.h
		glib/deprecated/grel.h
		glib/deprecated/gthread.h
	)
	repo_copy GLIB "${headers[@]}" "$prefix/include/glib/deprecated"

	# Assume x86_64-linux-gnu
	glib_version=2.80.0
	glib_version_parts=(${glib_version//./ })
	sed "$GLIB_DIR/glib/glibconfig.h.in" \
		-e 's/#mesondefine GLIB_HAVE_ALLOCA_H/#define GLIB_HAVE_ALLOCA_H/' \
		-e 's/#mesondefine GLIB_STATIC_COMPILATION/\/\* #undef GLIB_STATIC_COMPILATION \*\//' \
		-e 's/#mesondefine GOBJECT_STATIC_COMPILATION/\/\* #undef GOBJECT_STATIC_COMPILATION \*\//' \
		-e 's/#mesondefine GIO_STATIC_COMPILATION/\/\* #undef GIO_STATIC_COMPILATION \*\//' \
		-e 's/#mesondefine GMODULE_STATIC_COMPILATION/\/\* #undef GMODULE_STATIC_COMPILATION \*\//' \
		-e 's/#mesondefine GI_STATIC_COMPILATION/\/\* #undef GI_STATIC_COMPILATION \*\//' \
		-e 's/#mesondefine G_INTL_STATIC_COMPILATION/\/\* #undef G_INTL_STATIC_COMPILATION \*\//' \
		-e 's/#mesondefine FFI_STATIC_BUILD/\/\* #undef FFI_STATIC_BUILD \*\//' \
		-e 's/#mesondefine GLIB_USING_SYSTEM_PRINTF/#define GLIB_USING_SYSTEM_PRINTF/' \
		-e 's/@gint16@/short/g' \
		-e 's/@gint16_modifier@/"h"/g' \
		-e 's/@gint16_format@/"hi"/g' \
		-e 's/@guint16_format@/"hu"/g' \
		-e 's/@gint32@/int/g' \
		-e 's/@gint32_modifier@/""/g' \
		-e 's/@gint32_format@/"i"/g' \
		-e 's/@guint32_format@/"u"/g' \
		-e 's/@glib_extension@//g' \
		-e 's/@gint64@/long/g' \
		-e 's/@gint64_constant@/(val##L)/g' \
		-e 's/@guint64_constant@/(val##UL)/g' \
		-e 's/@gint64_modifier@/"l"/g' \
		-e 's/@gint64_format@/"li"/g' \
		-e 's/@guint64_format@/"lu"/g' \
		-e 's/@glib_void_p@/8/g' \
		-e 's/@glib_long@/8/g' \
		-e 's/@glib_size_t@/8/g' \
		-e 's/@glib_ssize_t@/8/g' \
		-e 's/@glib_size_type_define@/long/g' \
		-e 's/@gsize_modifier@/"l"/g' \
		-e 's/@gssize_modifier@/"l"/g' \
		-e 's/@gsize_format@/"lu"/g' \
		-e 's/@gssize_format@/"li"/g' \
		-e 's/@glib_msize_type@/LONG/g' \
		-e 's/@g_pollfd_format@/"%d"/g' \
		-e 's/@glib_gpi_cast@/(glong)/g' \
		-e 's/@glib_gpui_cast@/(gulong)/g' \
		-e 's/@glib_intptr_type_define@/long/g' \
		-e 's/@gintptr_modifier@/"l"/g' \
		-e 's/@gintptr_format@/"li"/g' \
		-e 's/@guintptr_format@/"lu"/g' \
		-e "s/@GLIB_MAJOR_VERSION@/${glib_version_parts[0]}/g" \
		-e "s/@GLIB_MINOR_VERSION@/${glib_version_parts[1]}/g" \
		-e "s/@GLIB_MICRO_VERSION@/${glib_version_parts[2]}/g" \
		-e 's/@glib_os@/#define G_OS_UNIX/g' \
		-e 's/@glib_vacopy@/\n#define G_VA_COPY_AS_ARRAY 1/g' \
		-e 's/#mesondefine G_HAVE_GROWING_STACK/#define G_HAVE_GROWING_STACK 0/' \
		-e 's/@g_threads_impl_def@/POSIX/g' \
		-e 's/#mesondefine G_ATOMIC_LOCK_FREE/#define G_ATOMIC_LOCK_FREE/' \
		-e 's/@g_bs_native@/LE/g' \
		-e 's/@g_bs_alien@/BE/g' \
		-e 's/@glongbits@/64/g' \
		-e 's/@gintbits@/32/g' \
		-e 's/@gsizebits@/64/g' \
		-e 's/@g_byte_order@/G_LITTLE_ENDIAN/g' \
		-e 's/@g_pollin@/1/g' \
		-e 's/@g_pollout@/4/g' \
		-e 's/@g_pollpri@/2/g' \
		-e 's/@g_pollhup@/16/g' \
		-e 's/@g_pollerr@/8/g' \
		-e 's/@g_pollnval@/32/g' \
		-e 's/@g_module_suffix@/so/g' \
		-e 's/@g_pid_type@/int/g' \
		-e 's/@g_pid_format@/"i"/g' \
		-e 's/@g_af_unix@/1/g' \
		-e 's/@g_af_inet@/2/g' \
		-e 's/@g_af_inet6@/10/g' \
		-e 's/@g_msg_oob@/1/g' \
		-e 's/@g_msg_peek@/2/g' \
		-e 's/@g_msg_dontroute@/4/g' \
		-e 's/@g_dir_separator@/\//g' \
		-e 's/@g_searchpath_separator@/:/g' \
		-e 's/#mesondefine G_HAVE_FREE_SIZED/#undef G_HAVE_FREE_SIZED/' \
	> "$prefix/include/glibconfig.h"

	"$GLIB_DIR/tools/gen-visibility-macros.py" "$glib_version" versions-macros \
		"$GLIB_DIR/glib/gversionmacros.h.in" "$prefix/include/glib/gversionmacros.h"

	"$GLIB_DIR/tools/gen-visibility-macros.py" "$glib_version" visibility-macros \
		GLIB "$prefix/include/glib/glib-visibility.h"

	headers=(
		gobject/gobject-autocleanups.h
		gobject/glib-types.h
		gobject/gbinding.h
		gobject/gbindinggroup.h
		gobject/gboxed.h
		gobject/gclosure.h
		gobject/genums.h
		gobject/gmarshal.h
		gobject/gobject.h
		gobject/gparam.h
		gobject/gparamspecs.h
		gobject/gsignal.h
		gobject/gsignalgroup.h
		gobject/gsourceclosure.h
		gobject/gtype.h
		gobject/gtypemodule.h
		gobject/gtypeplugin.h
		gobject/gvalue.h
		gobject/gvaluearray.h
		gobject/gvaluecollector.h
		gobject/gvaluetypes.h
		gobject/gobjectnotifyqueue.c # sic
	)
	repo_copy GLIB "${headers[@]}" "$prefix/include/gobject"

	glib-mkenums --template "$GLIB_DIR/gobject/glib-enumtypes.h.template" "$prefix/include/glib/gunicode.h" \
	> "$prefix/include/gobject/glib-enumtypes.h"

	"$GLIB_DIR/tools/gen-visibility-macros.py" "$glib_version" visibility-macros \
		GOBJECT "$prefix/include/gobject/gobject-visibility.h"

	headers=(
		gmodule/gmodule.h
	)
	repo_copy GLIB "${headers[@]}" "$prefix/include"

	mkdir -p "$prefix/include/gmodule"
	"$GLIB_DIR/tools/gen-visibility-macros.py" "$glib_version" visibility-macros \
		GMODULE "$prefix/include/gmodule/gmodule-visibility.h"

	headers=(
		gio/gappinfo.h
		gio/gasyncinitable.h
		gio/gasyncresult.h
		gio/gbufferedinputstream.h
		gio/gbufferedoutputstream.h
		gio/gbytesicon.h
		gio/gcancellable.h
		gio/gcontenttype.h
		gio/gcharsetconverter.h
		gio/gconverter.h
		gio/gconverterinputstream.h
		gio/gconverteroutputstream.h
		gio/gdatagrambased.h
		gio/gdatainputstream.h
		gio/gdataoutputstream.h
		gio/gdebugcontroller.h
		gio/gdebugcontrollerdbus.h
		gio/gdrive.h
		gio/gemblem.h
		gio/gemblemedicon.h
		gio/gfile.h
		gio/gfileattribute.h
		gio/gfileenumerator.h
		gio/gfileicon.h
		gio/gfileinfo.h
		gio/gfileinputstream.h
		gio/gfilemonitor.h
		gio/gfilenamecompleter.h
		gio/gfileoutputstream.h
		gio/gfileiostream.h
		gio/gfilterinputstream.h
		gio/gfilteroutputstream.h
		gio/gicon.h
		gio/ginetaddress.h
		gio/ginetaddressmask.h
		gio/ginetsocketaddress.h
		gio/ginitable.h
		gio/ginputstream.h
		gio/gio.h
		gio/gio-autocleanups.h
		gio/gioenums.h
		gio/gioerror.h
		gio/giomodule.h
		gio/gioscheduler.h
		gio/giostream.h
		gio/giotypes.h
		gio/gloadableicon.h
		gio/gmount.h
		gio/gmemoryinputstream.h
		gio/gmemorymonitor.h
		gio/gmemoryoutputstream.h
		gio/gmountoperation.h
		gio/gnativesocketaddress.h
		gio/gnativevolumemonitor.h
		gio/gnetworkaddress.h
		gio/gnetworkmonitor.h
		gio/gnetworkservice.h
		gio/goutputstream.h
		gio/gpermission.h
		gio/gpollableinputstream.h
		gio/gpollableoutputstream.h
		gio/gpollableutils.h
		gio/gpowerprofilemonitor.h
		gio/gproxy.h
		gio/gproxyaddress.h
		gio/gproxyaddressenumerator.h
		gio/gproxyresolver.h
		gio/gresolver.h
		gio/gresource.h
		gio/gseekable.h
		gio/gsimpleasyncresult.h
		gio/gsimpleiostream.h
		gio/gsimplepermission.h
		gio/gsimpleproxyresolver.h
		gio/gsocket.h
		gio/gsocketaddress.h
		gio/gsocketaddressenumerator.h
		gio/gsocketclient.h
		gio/gsocketconnectable.h
		gio/gsocketconnection.h
		gio/gsocketcontrolmessage.h
		gio/gsocketlistener.h
		gio/gsocketservice.h
		gio/gsrvtarget.h
		gio/gsubprocess.h
		gio/gsubprocesslauncher.h
		gio/gtask.h
		gio/gtcpconnection.h
		gio/gtcpwrapperconnection.h
		gio/gthemedicon.h
		gio/gthreadedsocketservice.h
		gio/gtlsbackend.h
		gio/gtlscertificate.h
		gio/gtlsclientconnection.h
		gio/gtlsconnection.h
		gio/gtlsdatabase.h
		gio/gtlsfiledatabase.h
		gio/gtlsinteraction.h
		gio/gtlspassword.h
		gio/gtlsserverconnection.h
		gio/gdtlsconnection.h
		gio/gdtlsclientconnection.h
		gio/gdtlsserverconnection.h
		gio/gunixconnection.h
		gio/gunixcredentialsmessage.h
		gio/gunixfdlist.h
		gio/gunixsocketaddress.h
		gio/gvfs.h
		gio/gvolume.h
		gio/gvolumemonitor.h
		gio/gzlibcompressor.h
		gio/gzlibdecompressor.h
		gio/glistmodel.h
		gio/gliststore.h

		gio/gapplication.h
		gio/gapplicationcommandline.h
		gio/gactiongroup.h
		gio/gactionmap.h
		gio/gsimpleactiongroup.h
		gio/gremoteactiongroup.h
		gio/gactiongroupexporter.h
		gio/gdbusactiongroup.h
		gio/gaction.h
		gio/gpropertyaction.h
		gio/gsimpleaction.h
		gio/gmenumodel.h
		gio/gmenu.h
		gio/gmenuexporter.h
		gio/gdbusmenumodel.h
		gio/gnotification.h

		gio/gsettingsbackend.h
		gio/gsettingsschema.h
		gio/gsettings.h

		gio/gdbusauthobserver.h
		gio/gcredentials.h
		gio/gdbusutils.h
		gio/gdbuserror.h
		gio/gdbusaddress.h
		gio/gdbusconnection.h
		gio/gdbusmessage.h
		gio/gdbusnameowning.h
		gio/gdbusnamewatching.h
		gio/gdbusproxy.h
		gio/gdbusintrospection.h
		gio/gdbusmethodinvocation.h
		gio/gdbusserver.h
		gio/gdbusinterface.h
		gio/gdbusinterfaceskeleton.h
		gio/gdbusobject.h
		gio/gdbusobjectskeleton.h
		gio/gdbusobjectproxy.h
		gio/gdbusobjectmanager.h
		gio/gdbusobjectmanagerclient.h
		gio/gdbusobjectmanagerserver.h
		gio/gtestdbus.h
	)
	repo_copy GLIB "${headers[@]}" "$prefix/include/gio"

	sed "$GLIB_DIR/gio/gnetworking.h.in" \
		-e 's/@NAMESER_COMPAT_INCLUDE@//g' \
	> "$prefix/include/gio/gnetworking.h"

	glib-mkenums --template "$GLIB_DIR/gio/gioenumtypes.h.template" "${headers[@]/#gio\//$prefix/include/gio/}" "$prefix/include/gio/gnetworking.h" \
	> "$prefix/include/gio/gioenumtypes.h"

	"$GLIB_DIR/tools/gen-visibility-macros.py" "$glib_version" visibility-macros \
		GIO "$prefix/include/gio/gio-visibility.h"

	curl --output-dir "$prefix/include/" -LZ \
		-O "https://raw.githubusercontent.com/systemd/systemd/$SYSTEMD_REV/src/libudev/libudev.h"

	cat >> build.zig <<- 'EOF'
		pub const libudev_soname = "libudev.so.1";
	EOF
}

main() {
	build_zig_preamble > "build.zig"

	opengl
	vulkan
	wayland
	x11
	kmsdrm
	libusb
	pulseaudio
	pipewire
	alsa
	sndio
	jack
	linuxcore

	rm -rf "$TMP_PREFIX"
}

main
