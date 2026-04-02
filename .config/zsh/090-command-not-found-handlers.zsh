#!/usr/bin/env zsh

if [[ -x "$(command -v pkgfile)" ]]
then
	# shellcheck source=/dev/null
	source /usr/share/doc/pkgfile/command-not-found.zsh
# elif [[ -x "$(command -v apt-get)" ]]
# then
# 	command_not_found_handler() {
# 		local cmd="$1"

# 		if apt-get install --dry-run "${cmd}" 1>/dev/null 2>&1
# 		then
# 			if read -r -q "?zsh: command not found, install ${cmd} with apt-get [nyae]? "
# 			then
# 				printf '\nzsh: installing %s...\n' "${cmd}"
# 				$([[ $(id -u) == 0 ]] || echo sudo) apt-get install "${cmd}"
# 				return 0
# 			else
# 				printf '\nzsh: not installing %s\n' "${cmd}"
# 			fi
# 		else
# 			printf 'zsh: command not found: %s\n' "${cmd}" 1>&2
# 		fi

# 		return 127
# 	}
elif true # [[ -x "$(command -v brew)" ]]
then
	true
# 	command_not_found_handler() {
# 		local cmd="$1"

# 		if brew install --dry-run "${cmd}" 1>/dev/null 2>&1
# 		then
# 			if read -r -q "?zsh: command not found, install ${cmd} with homebrew [nyae]? "
# 			then
# 				printf '\nzsh: installing %s...\n' "${cmd}"
# 				brew install "${cmd}"
# 				return 0
# 			else
# 				printf '\nzsh: not installing %s\n' "${cmd}"
# 			fi
# 		else
# 			printf 'zsh: command not found: %s\n' "${cmd}" 1>&2
# 		fi

# 		return 127
# 	}
fi
