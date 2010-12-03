class EncodeVideo
  @queue = :encode_video

  def self.perform(file)
    puts "#{Time.now}-Encode Video #{file}"
    cmd = "ffmpeg -i #{file} -vcodec libtheora -sameq -acodec libvorbis -ac 2 -sameq #{file.gsub(/\.[^.]+$/, "") + "_encoded.ogg"}"
    $stdout.puts "\n=====================\n" + cmd + "\n=====================\n"
    exec cmd
  end 
end
