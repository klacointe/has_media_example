# Set the directory path to use to store media
HasMedia.directory_path = Rails.root + "public/media"

# Set the base uri to access media
HasMedia.directory_uri = "/media"

# Set the allowed medium types for your application,
# if no :only option is defined on model, it will try 
# to find a class to use with the following mime types
HasMedia.medium_types = {
  "Image" => ["image/jpeg"],
  "Avatar" => ["image/png", "image/jpeg"]
}

# Set the extension of encoded files to use for each medium types (used in file_uri and file_path)
HasMedia.encoded_extensions = {
  :image => 'jpg',
  :avatar => 'png'
}

# Require your uploaders
Dir.glob(File.dirname(__FILE__) + '/../app/uploaders/*.rb').each do |uploader|
  require uploader
end
