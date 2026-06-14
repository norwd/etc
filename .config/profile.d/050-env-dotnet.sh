#!/bin/sh

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV
#

export DOTNET_CLI_TELEMETRY_OPTOUT=true
export DOTNET_NOLOGO=true
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true
export NUGET_PACKAGES="${XDG_CACHE_HOME}/nuget/packages"
export DOTNET_ROOT="${HOME}/.dotnet"
if [ -d "${DOTNET_ROOT}" ]
then
	export PATH="${PATH}:${DOTNET_ROOT}"
fi
