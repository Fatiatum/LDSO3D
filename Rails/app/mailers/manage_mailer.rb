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

  def order(experience, client, date, number_person)
    @number_person = number_person
    @date_hash = date
  	@client = client
  	@experience = experience
  	@product = Product.find(@experience.Product_id)
  	@mail = User.last.email
  	@number = Order.all.size
    @date = Date.parse(@date_hash.sort.to_a.collect{|c| c[1]}.join("-") ).to_s
    mail  to: @mail,
          from: @mail,
          subject: "Order Number: " + @number.to_s
  end
end 
