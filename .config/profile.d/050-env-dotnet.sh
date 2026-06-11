#!/bin/sh

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
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
