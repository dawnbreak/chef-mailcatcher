#
# Cookbook Name:: MailCatcher
# Recipe:: dependencies
#
# Copyright 2014, Bryan te Beek
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# These are dependencies to install MailCatcher
case node['platform_family']
when "debian"
  package "sqlite"
  package "libsqlite3-dev"
  package "make"
  package "g++"
when "rhel", "fedora", "suse"
  package "gcc-c++"
  package "sqlite-devel"
end
