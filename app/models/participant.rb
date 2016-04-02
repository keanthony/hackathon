class Participant < ActiveRecord::Base

  belongs_to :event

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :id_number
  validates_presence_of :major
  validates_presence_of :concentration
  validates_presence_of :event
end
