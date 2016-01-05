class ManageMailer < ApplicationMailer
  def contact(cont, from_email)
    @from_email = from_email
    @contact = cont
    @mail = User.last.email
    @subject = cont.subject

    mail  to: @mail,
          from: @mail,
          subject: @subject
  end

  def order(experience, client)
  	@client = client
  	@experience = experience
  	@product = Product.find(@experience.Product_id)
  	@mail = User.last.email
  	@number = Order.all.size
    mail  to: @mail,
          from: @mail,
          subject: "Order Number: " + @number.to_s
  end
end 
