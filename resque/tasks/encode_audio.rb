class EncodeAudio
  @queue = :encode_audio

  def self.perform(file)
    puts "#{Time.now}-Encode Audio #{file}"
    cmd = "ffmpeg -i #{file} #{file.gsub(/\.[^.]+$/, "") + "_encoded.mp3"}"
    exec cmd
  end 
end
