class Town < ActiveRecord::Base
  has_many :points, dependent: :destroy
end
