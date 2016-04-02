class Event < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :start_time
  validates_presence_of :end_time
  validates_presence_of :day

  has_many :participants
end
