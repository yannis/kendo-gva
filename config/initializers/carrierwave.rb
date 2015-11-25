# CarrierWave.configure do |config|
#   config.cache_dir = "#{Rails.root}/tmp/"

#   if Rails.env.development? || Rails.env.test?
#     config.storage = :file
#   else
#     config.fog_credentials = {
#         :provider              => 'AWS',
#         :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
#         :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
#         # :region                => 'us-east-1'
#     }

#     config.fog_directory = ENV['FOG_DIRECTORY']
#     config.fog_public    = true
#     config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
#   end
# end

CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/"
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region:                'eu-west-1',
    }
    config.fog_directory  = ENV['FOG_DIRECTORY']
    config.fog_public     = false
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
  end
end
