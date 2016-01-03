require 'test_helper'

class ManageMailerTest < ActionMailer::TestCase
  test "contact" do

    cont = Contact.new
    cont.from_mail = 'jorge.filipe.teixeira.1@gmail.com'
    cont.name = 'Jorge'
    cont.subject = 'Teste'
    cont.msg = 'Isto é um teste'

    mail = ManageMailer.contact(cont, "jorge.filipe.teixeira.1@gmail.com").deliver_now
    assert_equal "Teste", mail.subject, "Mail subject incorrect"
    assert_equal ["jorge.filipe.teixeira.1@gmail.com"], mail.to, "Mail to incorrect"
    assert_equal ["jorge.filipe.teixeira.1@gmail.com"], mail.from, "Mail from incorrect"
    #assert_equal "Isto é um teste", mail.body.to_s, "Mail message incorrect"
    assert_not ActionMailer::Base.deliveries.empty?, "Did not send mail"
  end
  
  #test "new_experience" do
  #  mail = ManageMailer.new_experience
  #  assert_equal "New experience", mail.subject
  #  assert_equal ["jorge.filipe.teixeira.1@gmail.com"], mail.to
  #  assert_equal ["jorge.filipe.teixeira.1@gmail.com"], mail.from
  #end

end
