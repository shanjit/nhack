class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name, :email, :message, :created_at, :updated_at

    validates_presence_of :name, :message => "cannot be blank"
    validates_presence_of :email, :message => "cannot be blank"
    validates_presence_of :message, :message => "cannot be blank"


end
