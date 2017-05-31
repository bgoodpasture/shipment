class Boat < ApplicationRecord

  has_many :boat_jobs, :dependent => :destroy
  has_many :jobs, :through => :boat_jobs

  validates :name, uniqueness: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url:"images/:style_default.png"
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
