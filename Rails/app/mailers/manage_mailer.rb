class ManageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.manage_mailer.contact.subject
  #
  def contact(cont, email)
    @email = email
    @contact = cont
    @name = cont.name
    @subject = cont.subject

    mail to: @email,
         subject: @subject
  end
end
