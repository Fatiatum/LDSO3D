# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

About.create(text: 'TESTING ABOUT DATABASE WITH THIS TEXT', image: 'w2.jpg')
Contact.create(text: 'CONTACTS TEXT EXAMPLE', phone: '229876123', email: 'example@mail.com', address: 'R. do exemplo, nº 123 1º esquerdo direito')
Welcome.create(title: 'YOUR OPORTO EXPERIENCES', subtitle: 'ALL TOGETHER IN ONE PLACE', image: 'header.jpg', texttitle: 'SOLIDARITY', text: '1% of all income will be donated to a social cause')
Faq.create()
Question.create(name:'Pergunta 1', answer:'Resposta', faq_id:'1')