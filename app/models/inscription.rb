class Inscription < ActiveRecord::Base
  after_save :send_self_to_commander

  TYPE=[true,false]
  validates :name, :description, presence: true
  validates :positive, inclusion: TYPE

private
  def send_self_to_commander
    CommanderService.new(self).delay.send_event
  end
end
