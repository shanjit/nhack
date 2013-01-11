class AdminController < ApplicationController

    def index
    end

    def count
        @count = Count.find(:all)
        render(:controller => "admin", :action => "index")
    end

    def contact
        @count = Contact.find(:all)
        render(:controller => "admin", :action => "index")
    end


end
