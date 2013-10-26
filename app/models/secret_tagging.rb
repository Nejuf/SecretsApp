class SecretTagging < ActiveRecord::Base
  attr_accessible :secret_id, :tag_id, :user_id

  belongs_to :secret
  belongs_to :tag
  belongs_to :user
end
