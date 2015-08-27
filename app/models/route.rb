class Route < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :points, dependent: :destroy
end
