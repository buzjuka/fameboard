class Inscription < ActiveRecord::Base
  TYPE=[true,false]
  validates :name, :description, presence: true
  validates :positive, inclusion: TYPE
end
