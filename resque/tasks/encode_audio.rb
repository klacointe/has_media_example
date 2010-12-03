class EncodeAudio
  @queue = :encode_audio

  def self.perform(file)
    puts "#{Time.now}-Encode Audio #{file}"
    cmd_mp3 = "ffmpeg -i #{file} #{file.gsub(/\.[^.]+$/, "") + "_encoded.mp3"}"
    $stdout.puts "\n=====================\n" + cmd_mp3 + "\n=====================\n"
    cmd_ogg = "ffmpeg -i #{file} -sameq -acodec libvorbis -ac 2 -sameq #{file.gsub(/\.[^.]+$/, "") + "_encoded.ogg"}"
    $stdout.puts "\n=====================\n" + cmd_ogg + "\n=====================\n"
    exec("#{cmd_mp3} && #{cmd_ogg}")
  end 
end
