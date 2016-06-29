#!/usr/bin/env bash

# Installation script for Gustavo's dotfiles
# (https://github.com/gustavosotnas/dotfiles)
# 
# It applies all files and subdirectories in this location to HOME directory
# (a.k.a "~") and configures everything that could be useful to a Linux
# installation.
# 
# This code is based on mathiasbynens' dotfiles installation script
# (https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh)
# And it was written using Best Practices for Writing Bash Scripts
# (http://kvz.io/blog/2013/11/21/bash-best-practices)
# And based on Bash Boilerplate:
# (https://github.com/kvz/bash3boilerplate)
# 
# Author: Gustavo Moraes <gustavosotnas1@gmail.com>
#
# This file is subject to the terms and conditions of the MIT License.
# See the file LICENSE in the main directory of this archive
# for more details.

# Exit on error. Append || true if you expect an error.
set -o errexit
# Catch the error in case of a piped process fails, but another succeeds.
set -o pipefail

# A function that does almost nothing, only repeats the exit status of the last
# command run by pipe...
# ... but, in practice, it is equivalent to ">/dev/null", so, this is useful
# for writing clean scripts where it is necessary to hide the command output.
function null(){
	return $?;
}
grep | null;
echo "Vamos ver se imprime isso";
