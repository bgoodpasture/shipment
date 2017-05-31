class Job < ApplicationRecord

  has_many :boat_jobs, :dependent => :destroy
  has_many :boats, :through => :boat_jobs
  accepts_nested_attributes_for :boat_jobs

  validates :jobName, uniqueness: true
  validates :description, length: {minimum: 50}
  validates :cost, :numericality => {greater_than: 1000}


end
