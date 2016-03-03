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


# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }


# deploy.rb or stage file (staging.rb, production.rb or else)
 set :rvm_type, :auto                     # Defaults to: :auto
# set :rvm_ruby_version, '2.0.0-p247'      # Defaults to: 'default'
# set :rvm_custom_path, '~/.myveryownrvm'  # only needed if not detected
