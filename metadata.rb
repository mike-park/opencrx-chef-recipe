name             'opencrx'
maintainer       'Mike Park'
maintainer_email 'mikep@quake.net'
license          'MIT'
description      'Installs environment for opencrx.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "opencrx::default", "Installs opencrx and dependencies"

depends "java"
depends "ark"
