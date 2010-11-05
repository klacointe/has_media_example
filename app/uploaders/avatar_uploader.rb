class AvatarUploader < MediumUploader
  include CarrierWave::RMagick

  version :thumb do
    process :resize_to_fit => [100, 100]
  end
  version :sepia do
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
