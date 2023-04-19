#!/bin/bash
# openasar breaks itself for some reason lmao
#sudo cp /opt/discord-canary/resources/app.asar.download /opt/discord-canary/resources/app.asar

#extramangoargs="--dlsym"
#ENABLE_VULKAN=1 mangohud ${extramangoargs}
#discord --enable-webrtc-pipewire-capturer --ozone-platform-hint=wayland --ozone-platform=wayland
#discord-canary --enable-webrtc-pipewire-capturer --ozone-platform-hint=Wayland --ozone-platform=wayland

#exit

discord-canary \
    --ignore-gpu-blocklist \
    --enable-gpu-rasterization \
    --enable-webrtc-pipewire-capturer \
    --ozone-platform-hint=Wayland \
    --disable-gpu-sandbox \
    --gpu \
    --vulkan \
    --hardware_video_decoding \
    --hardware_video_encoding \
    --enable-zero-copy \
    --enable-native-gpu-memory-buffers \
    --enable-gpu-memory-buffer-video-frames \
    --enable-hardware-overlays \
    --use-overlays-for-video \
    --enable-features=UseOzonePlatform,WebRTCPipeWireCapturer,VaapiVideoDecoder,ThreadedBodyLoader,ForceHighPerformanceGPUForWebGL,ProcessHtmlDataImmediately,Vulkan \
    --enable-blink-features=MiddleClickAutoscroll,BatchFetchRequests,MojoDedicatedThread \
    --ozone-platform=wayland \
    --disable-gpu-vsync \
    --enable-vp9-kSVC-decode-acceleration \
    --enable-direct-composition-video-overlays \
    --show-fps-overlay
#    --proxy-server="127.0.0.1:3000"

# enable-features JavaScriptExperimentalSharedMemory,

#--use-gl=desktop
# ^ (for OpenGL, in that case remove --vulkan and "Vulkan" from --enable-features)

#--show-fps-overlay
#--show-composited-layer-borders
# ^ for debugging ig idk
