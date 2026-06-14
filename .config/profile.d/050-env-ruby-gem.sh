#!/bin/sh

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: HL3-CL-ECO-LAW-MIL-SV
#

if [ -x "$(command -v ruby)" ] && [ -x "$(command -v gem)" ]
then
	_ruby_gem_user_dir_bin="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin"
	if [ -d "${_ruby_gem_user_dir_bin}" ]
	then
		export PATH="${PATH}:${_ruby_gem_user_dir_bin}"
	fi
fi
