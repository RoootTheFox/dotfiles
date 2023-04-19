#!/bin/bash
#Run game or given command in environment

cd "/home/rooot/.local/share/Steam/steamapps/common/Geometry Dash"
DEF_CMD=("/home/rooot/.local/share/Steam/steamapps/common/Geometry Dash/GeometryDash.exe")
PATH="/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/bin/:/usr/bin:/bin" \
	TERM="xterm" \
	WINEDEBUG="-all" \
	WINEDLLPATH="/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/lib64//wine:/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/lib//wine" \
	LD_LIBRARY_PATH="/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/lib64/:/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/lib/:/usr/lib/pressure-vessel/overrides/lib/x86_64-linux-gnu/aliases:/usr/lib/pressure-vessel/overrides/lib/i386-linux-gnu/aliases" \
	WINEPREFIX="/home/rooot/.local/share/Steam/steamapps/compatdata/322170/pfx/" \
	WINEESYNC="1" \
	WINEFSYNC="1" \
	SteamGameId="322170" \
	SteamAppId="322170" \
	WINEDLLOVERRIDES="Xinput9_1_0=n,b;steam.exe=b;dotnetfx35.exe=b;dotnetfx35setup.exe=b;beclient.dll=b,n;beclient_x64.dll=b,n;d3d11=n;d3d10core=n;d3d9=n;dxgi=n;d3d12=n" \
	STEAM_COMPAT_CLIENT_INSTALL_PATH="/home/rooot/.local/share/Steam" \
	WINE_LARGE_ADDRESS_AWARE="1" \
	GST_PLUGIN_SYSTEM_PATH_1_0="/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/lib64/gstreamer-1.0:/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/lib/gstreamer-1.0" \
	WINE_GST_REGISTRY_DIR="/home/rooot/.local/share/Steam/steamapps/compatdata/322170/gstreamer-1.0/" \
	MEDIACONV_AUDIO_DUMP_FILE="/home/rooot/.local/share/Steam/steamapps/shadercache/322170/fozmediav1/audiov2.foz" \
	MEDIACONV_AUDIO_TRANSCODED_FILE="/home/rooot/.local/share/Steam/steamapps/shadercache/322170/transcoded_audio.foz" \
	MEDIACONV_VIDEO_DUMP_FILE="/home/rooot/.local/share/Steam/steamapps/shadercache/322170/fozmediav1/video.foz" \
	MEDIACONV_VIDEO_TRANSCODED_FILE="/home/rooot/.local/share/Steam/steamapps/shadercache/322170/transcoded_video.foz" \
	"/home/rooot/.local/share/Steam/compatibilitytools.d/GE-Proton7-43/files/bin/wine64" c:\\windows\\system32\\steam.exe "${@:-${DEF_CMD[@]}}"
