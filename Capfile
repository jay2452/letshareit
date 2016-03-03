# Load DSL and Setup Up Stages
require 'capistrano/setup'
require 'capistrano/deploy'

#
# require 'net-ssh'
# require 'net-scp'
# require 'sshkit'

require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rvm'
require 'capistrano/puma'


# deploy.rb or stage file (staging.rb, production.rb or else)
 set :rvm_type, :system                     # Defaults to: :auto
 set :rvm_ruby_version, 'ruby 2.0.0p643'      # Defaults to: 'default'
 set :rvm_custom_path, '~/usr/local/rvm'  # only needed if not detected



# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
