class Count < ActiveRecord::Base
  # attr_accessible :title, :body
attr_accessible :email, :track, :writetime

validates_uniqueness_of :email
end
