class Cat < ActiveRecord::Base
  validates_presence_of :no_legs
  has_many :comments
end
