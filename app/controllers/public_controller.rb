class PublicController < ApplicationController
protect_from_forgery

    def index
         @count = Count.new
         @contact = Contact.new
    end
    
    def create
        @count = Count.new(params[:count])

        if @count.save
            redirect_to(:action => 'new')

        elsif @count.errors.full_messages[0] == "Email cannot be blank"
            @welcometext = "Please enter a valid email id."
            @contact = Contact.new
            render(:controller => 'public', :action => 'index')

        else
            @welcometext = "You are already registered! We will keep you informed."
            @count = Count.new
            @contact = Contact.new
 
 
            render(:controller => 'public', :action => 'index')
        end
        
    end

    def new
        @count = Count.new
        @contact = Contact.new
        @welcometext = "You are in! We will keep you informed."
        render(:action => 'index')
#        redirect_to(:controller => "public", :action => 'index')

    end

    def contact_form
        @contact = Contact.new(params[:contact])
        @count = Count.new
        if @contact.save
            @welcometext = "Thanks for leaving us a message. We will get back to you."
            render(:action => 'index')
        else
            @welcometext = "Message not submitted, please try again."
            
            render(:action => "index")
        end
    end



end
