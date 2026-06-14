#!/bin/sh

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: HL3-CL-ECO-LAW-MIL-SV
#

export XDG_DESKTOP_DIR="${HOME}/Desktop"
export XDG_DOCUMENTS_DIR="${HOME}/Documents" # TODO: merge with XDG_DESKTOP_DIR
export XDG_DOWNLOAD_DIR="${HOME}/Downloads"
export XDG_MUSIC_DIR="${HOME}/Music"
export XDG_PICTURES_DIR="${HOME}/Pictures"
export XDG_VIDEOS_DIR="${HOME}/Movies" # MacOS doesn't like ~/Videos
export XDG_PUBLICSHARE_DIR="${HOME}/Public"
export XDG_PROJECTS_DIR="${HOME}/src/norwd" # All my git clones go in ~/src/<user>/<repo>
export XDG_TEMPLATES_DIR="${XDG_DOCUMENTS_DIR}/Templates" # Low usage, put it under documents for tidyness
