class EncodeImage
  @queue = :encode_image
  include Magick

  def self.perform(file)
    puts "#{Time.now}-Encode Image #{file}"
    img = Image.read(file).first
    img.thumbnail(50, 50).write(file.gsub(/\.[^.]+$/, "") + "_thumb.png")
  end 
end
