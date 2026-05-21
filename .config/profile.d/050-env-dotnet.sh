export DOTNET_CLI_TELEMETRY_OPTOUT=true
export DOTNET_NOLOGO=true
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true
export DOTNET_ROOT="${HOME}/.dotnet"
if [ -d "${DOTNET_ROOT}" ]
then
	export PATH="${PATH}:${DOTNET_ROOT}"
fi
