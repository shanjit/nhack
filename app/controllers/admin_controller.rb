class AdminController < ApplicationController

    def index
    end

    def ipshita_count
        @count = Count.find(:all)
        render(:controller => "admin", :action => "index")
    end

    def ipshita_contact
        @count = Contact.find(:all)
        render(:controller => "admin", :action => "index")
    end


end
