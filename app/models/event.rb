class Event < ActiveRecord::Base
  has_many :participants
  
  validates_presence_of :name
  validates_presence_of :start_time
  validates_presence_of :end_time
  validates_presence_of :day
end
