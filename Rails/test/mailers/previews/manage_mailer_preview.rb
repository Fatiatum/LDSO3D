# Preview all emails at http://localhost:3000/rails/mailers/manage_mailer
class ManageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/manage_mailer/contact
  def contact
  	cont = Contact.new
  	cont.email = 'jorge.filipe.teixeira.1@gmail.com'
  	cont.from_mail = 'jorge.filipe.teixeira.1@gmail.com'
  	cont.name = 'Jorge'
  	cont.subject = 'Teste'
  	cont.msg = 'Isto é um teste'

    ManageMailer.contact(cont)
  end

  # Preview this email at http://localhost:3000/rails/mailers/manage_mailer/new_experience
  def new_experience

  	ManageMailer.new_experience
  end

end