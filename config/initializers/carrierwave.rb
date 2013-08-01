CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['CARRIER_WAVE_ACCESS_KEY'],
    :aws_secret_access_key  => ENV['CARRIER_WAVE_SECRET_ACCESS_KEY']
  }
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory  = ENV['CARRIER_WAVE_BUCKET']
  config.fog_attributes = { 'Cache-Control'=>'max-age=315576000' }
  #config.fog_public     = false                                   # optional, defaults to true
end

