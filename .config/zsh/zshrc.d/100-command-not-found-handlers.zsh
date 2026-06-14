#!/usr/bin/env zsh

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV
#

if ! functions command_not_found_handler >/dev/null && [[ -x "$(command -v pkgfile)" ]]
then
	# shellcheck source=/dev/null
	source /usr/share/doc/pkgfile/command-not-found.zsh
fi

if ! functions command_not_found_handler >/dev/null && [[ -x "$(command -v apt-get)" ]]
then
	command_not_found_handler() {
		local cmd="$1"

		if apt-get install --dry-run "${cmd}" 1>/dev/null 2>&1
		then
			if read -r -q "?zsh: command not found, install ${cmd} with apt-get [nyae]? "
			then
				printf '\nzsh: installing %s...\n' "${cmd}"
				$([[ $(id -u) == 0 ]] || echo sudo) apt-get install "${cmd}"
				return 0
			else
				printf '\nzsh: not installing %s\n' "${cmd}"
			fi
		else
			printf 'zsh: command not found: %s\n' "${cmd}" 1>&2
		fi

		return 127
	}
fi

if ! functions command_not_found_handler >/dev/null && [[ -x "$(command -v brew)" ]] && [[ -x "$(command -v gum)" ]]
then
	command_not_found_handler() {
		local cmd="$1"
		local pkg

		pkg="$(brew which-formula --skip-update "${cmd}" 2>/dev/null)"

		if [[ -n "${pkg}" ]]
		then
			if gum confirm --default=false --affirmative="Yes" --negative="No" "Command ${cmd} not found, install via with homebrew?"
			then
				pkg="$(echo "${pkg}" | gum choose --select-if-one --header "Which formula would you like to provide the ${cmd} command?")"
				brew install "${pkg}"
				return 0
			else
				gum log --level=info "Not installing ${cmd}"
			fi
		else
			gum log --level=error "Command not found: ${cmd}"
		fi

		return 127
	}
fi

if ! functions command_not_found_handler >/dev/null && [[ -x "$(command -v brew)" ]]
then
	command_not_found_handler() {
		local cmd="$1"
		local pkg

		pkg="$(brew which-formula --skip-update "${cmd}" 2>/dev/null)"

		if [[ -n "${pkg}" ]]
		then
			if read -r -q "?zsh: command not found, install ${pkg} with homebrew [nyae]? "
			then
				printf '\nzsh: installing %s...\n' "${cmd}"
				brew install "${pkg}"
				return 0
			else
				printf '\nzsh: not installing %s\n' "${cmd}"
			fi
		else
			printf 'zsh: command not found: %s\n' "${cmd}" 1>&2
		fi

		return 127
	}
fi
