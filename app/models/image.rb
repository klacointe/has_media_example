class Image < Medium
  mount_uploader :file, ImageUploader
  after_save :enqueue_encoding

  private 

  def enqueue_encoding
    Resque.enqueue(EncodeImage, File.join(self.original_file_path))
  end 
end
