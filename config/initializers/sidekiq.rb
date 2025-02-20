require 'sidekiq'
require 'sidekiq-cron'

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }

  # Sidekiq-Cronのスケジュール設定
  Sidekiq::Cron::Job.load_from_hash YAML.load_file('config/schedule.yml') if File.exist?('config/schedule.yml')
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }
end

Sidekiq::Web.set :sessions, false
