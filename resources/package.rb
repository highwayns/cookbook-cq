#
# Cookbook Name:: cq
# Resource:: package
#
# Copyright (C) 2014 Jakub Wadolowski
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :upload, :install, :deploy

default_action :nothing

attribute :name, :kind_of => String, :name_attribute => true, :required => true
attribute :username, :kind_of => String, :required => true
attribute :password, :kind_of => String, :required => true
attribute :instance, :kind_of => String, :required => true
attribute :source, :kind_of => String, :required => true
attribute :http_user, :kind_of => String, :default => '', :required => false
attribute :http_pass, :kind_of => String, :default => '', :required => false
attribute :recursive_install, :kind_of => [TrueClass, FalseClass],
                              :default => false, :required => false
attribute :checksum, :kind_of => String, :default => '', :required => false

attr_accessor :uploaded, :installed, :downloaded
