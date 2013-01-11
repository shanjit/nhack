class PublicController < ApplicationController
protect_from_forgery

    def index
         @count = Count.new
         @count.writetime = Time.now
         @contact = Contact.new
         @contact.writetime = Time.now
    end
    
    def create
        @count = Count.new(params[:count])
        @count.writetime = Time.now
        if @count.save
            redirect_to(:action => 'new')
        else
            @welcometext = "You are already registered! We will keep you informed."
            render(:controller => "public", :action => 'index')
        end
        
    end

    def new
        @count = Count.new
        @welcometext = "You are in! We will keep you informed."
        render(:action => 'index')
#        redirect_to(:controller => "public", :action => 'index')

    end

    def contact_form
        @contact = Contact.new(params[:contact])
        @contact.writetime = Time.now
        if @contact.save
            @welcometext = "Thanks for leaving us a message. We will get back to you."
            render(:action => 'index')
        else
            render(:action => "index")
        end
    end



end
