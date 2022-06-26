class ContactMailer < ApplicationMailer
    def new_contact(email)
        @email = email
        mail(to: @email, subject: 'New contact from website')
    end
        
end
