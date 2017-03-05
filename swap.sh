#!/bin/sh
#KUAL swap
#Copyright (C) 2017  zaoqi

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU Affero General Public License as published
#by the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU Affero General Public License for more details.

#You should have received a copy of the GNU Affero General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
if [ ! -f /var/local/SWAP ] ;then
	dd if=/dev/zero of=/var/local/SWAP bs=4096 count=8192
	mkswap /var/local/SWAP
fi
exec swapon /var/local/SWAP
