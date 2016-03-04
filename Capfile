# Load DSL and Setup Up Stages
require 'capistrano/setup'
require 'capistrano/deploy'

#
# require 'net-ssh'
# require 'net-scp'
# require 'sshkit'

require 'capistrano/rails'
require 'capistrano/bundler'
# require 'capistrano/rvm'
require 'capistrano/puma'


# # deploy.rb or stage file (staging.rb, production.rb or else)
#  set :rvm_type, :system                     # Defaults to: :auto
#  set :rvm_ruby_version, 'ruby 2.0.0p643'      # Defaults to: 'default'
#  set :rvm_custom_path, '~/usr/local/rvm'  # only needed if not detected


require "rvm/capistrano"

set :rvm_ruby_string, :local              # use the same ruby as used locally for deployment
set :rvm_autolibs_flag, "read-only"       # more info: rvm help autolibs

before 'deploy:setup', 'rvm:install_rvm'  # install/update RVM
before 'deploy:setup', 'rvm:install_ruby' # install Ruby and create gemset, OR:
# before 'deploy:setup', 'rvm:create_gemset' # only create gemset

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
