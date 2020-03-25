CarrierWave.configure do |config|
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'pictgram-siozawa'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS'],
      aws_secret_access_key: ENV['AWS_SECRET'],
      region: ENV['AWS_REASION'],
      path_style: true
    }
end