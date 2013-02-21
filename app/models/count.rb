class Count < ActiveRecord::Base
  # attr_accessible :title, :body
attr_accessible :email, :track, :created_at, :updated_at

    validates_presence_of :email, :message => "cannot be blank"
validates_uniqueness_of :email
end
