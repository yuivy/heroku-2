CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV["AWS_ACCESS"],
    aws_secret_access_key: ENV["AWS_SECRET"],
    region: 'ap-northeast-1'
  }

  # config.fog_directory  = 'rails-photo-123'
  config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/pictgram-siozawa"
  config.cache_storage = :fog
end