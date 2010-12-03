class Directory < ActiveRecord::Base
  has_one_medium :avatar, :only => :avatar
  has_many_media :images, :only => :image
  has_many_media :audios, :only => :audio
  validates_presence_of :title
end
