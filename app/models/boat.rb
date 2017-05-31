class Boat < ApplicationRecord

  has_many :boat_jobs, :dependent => :destroy
  has_many :jobs, :through => :boat_jobs

  validates :name, uniqueness: true
end
