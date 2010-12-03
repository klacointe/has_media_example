class EncodeImage
  @queue = :encode_image
  include Magick

  def self.perform(file)
    puts "#{Time.now}-Encode Image #{file}"
    img = Image.read(file).first
    img.crop_resized(200, 200).write(file.gsub(/\.[^.]+$/, "") + "_crop_200.jpg")
    img.resize_to_fit(200, 200).write(file.gsub(/\.[^.]+$/, "") + "_fill_200.jpg")
  end 
end
