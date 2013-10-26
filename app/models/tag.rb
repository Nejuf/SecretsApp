class Tag < ActiveRecord::Base
  attr_accessible :author_id, :name

  has_many(:secret_taggings)
  has_many(:secrets, through: :secret_taggings)
end
