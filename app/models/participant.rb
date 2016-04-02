class Participant < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :id_number
  validates_presence_of :major
  validates_presence_of :concentration
  validates_presence_of :event_id

  belongs_to :event
end
