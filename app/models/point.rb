class Point < ActiveRecord::Base
  belongs_to :town, dependent: :destroy
  belongs_to :route, dependent: :destroy
  has_one :user, through: :route

end
