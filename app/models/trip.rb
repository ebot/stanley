class Trip < ActiveRecord::Base
  has_attached_file :photo, 
                    :styles => { :medium => "400x400>", :thumb => "200x200>" },
                    :storage => :s3,
                    :bucket => 'stanbotz',
                    :s3_credentials => {
                      :access_key_id => ENV['S3_KEY'] || S3_KEY,
                      :secret_access_key => ENV['S3_SECRET'] || S3_SECRET
                    }
                    
  validates_presence_of :location
  validates_presence_of :description
  validates_presence_of :photo
end
