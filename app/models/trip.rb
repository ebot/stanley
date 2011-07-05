class Trip < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "400x400>", :thumb => "200x200>" }
  validates_presence_of :location
  validates_presence_of :description
  validates_presence_of :photo
end
