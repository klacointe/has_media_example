class Video < Medium
  mount_uploader :file, VideoUploader
  after_save :enqueue_encoding

  private 

  def enqueue_encoding
    Resque.enqueue(EncodeVideo, File.join(self.original_file_path))
  end 
end
