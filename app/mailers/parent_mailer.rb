class ParentMailer < ApplicationMailer
    
  def welcome_email(parent_id)
    @parent = Parent.find parent_id
    # attachments["sample.jpg"] = File.read("#{Rails.root}/app/assets/images/b1.jpeg")
    mail(to: @parent.email, subject: 'Welcome to Kiddoy')
  end
  
end