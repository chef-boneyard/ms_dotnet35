#
# Author:: Timothy Smith (<tsmith@chef.io>)
# Cookbook Name:: ms_dotnet35
# Recipe:: default
#
# Copyright 2012, Webtrends, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Install .NET 3.5 Feature if we don't find part of the package already installed
if platform?('windows')
  if node['platform_version'].to_i >= 6
    windows_feature 'NetFx3' do
      action :install
      all true
      not_if { ::File.exist?('C:/Windows/Microsoft.NET/Framework/v3.5') }
    end
  else
    Chef::Log.warn('The Microsoft .NET Framework 3.5 Chef recipe currently only supports Windows Vista, 7, 2008, and 2008 R2.')
  end
else
  Chef::Log.info('Microsoft Framework .NET 3.5 can only be installed on the Windows platform.')
end
