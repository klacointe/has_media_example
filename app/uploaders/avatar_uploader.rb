class AvatarUploader < MediumUploader
  include CarrierWave::RMagick

  version :thumb do
    process :resize_to_fit => [200, 200]
  end
  version :thumb_sepia do
    process :resize_to_fit => [200, 200]
    process :sepia
  end

  def sepia
    manipulate! do |img|
      img = img.sepiatone
      img = img.auto_orient
      img = img.radial_blur(10)
    end
  end

end
