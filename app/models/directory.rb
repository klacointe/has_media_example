class Directory < ActiveRecord::Base
  has_many_media :images, :only => :image
  has_one_medium :avatar, :only => :avatar
  validates_presence_of :title
end
