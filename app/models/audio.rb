class Audio < Medium
  mount_uploader :file, AudioUploader
  after_save :enqueue_encoding

  private 

  def enqueue_encoding
    Resque.enqueue(EncodeAudio, File.join(self.original_file_path))
  end 
end
