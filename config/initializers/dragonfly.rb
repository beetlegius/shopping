require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick, identify_command: "identify -limit memory 0 -limit map 0"

  secret "6b08666fb476c48ccd34d9742b5bcc5d5ed4b3322dd15dec78d4f9bec4b8d96e"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end

module Dragonfly
  class Response
    private
    def cache_headers
      if job.size > 1048576
        {
          "Cache-Control" => "no-cache, no-store",
          "Pragma" => "no-cache"
        }
      else
        {
           "Cache-Control" => "public, max-age=31536000", # (1 year)
           "ETag" => %("#{job.signature}")
        }
      end
    end
  end
end
