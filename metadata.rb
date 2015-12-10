name              'ms_dotnet35'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs Microsoft .NET Framework 3.5'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '1.0.1'
supports          'windows'
depends           'windows'

source_url 'https://github.com/chef-cookbooks/ms_dotnet35' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/ms_dotnet35/issues' if respond_to?(:issues_url)
