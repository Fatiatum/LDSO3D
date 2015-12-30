# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Welcome.create(title_pt: 'AS SUAS EXPERIENCIAS NO PORTO', title_en: 'YOUR OPORTO EXPERIENCES', 
	subtitle_pt: 'JUNTAS NUM ÚNICO ESPAÇO', subtitle_en: 'ALL TOGETHER IN ONE PLACE', 
	texttitle_pt: 'SOLIDÁRIO', texttitle_en: 'SOLIDARITY', 
	text_pt: '1% de todas as receitas obtidas será doado a uma causa solidária', text_en: '1% of all income will be donated to a social cause',
	image: 'Porto.jpg')

About.create(text_pt: 'TESTE DO ABOUT', text_en: 'TESTING ABOUT DATABASE WITH THIS TEXT', 
			 image: 'w2.jpg')

Contact.create(text: 'CONTACTS TEXT EXAMPLE', phone: '229876123', email: 'jorge.filipe.teixeira.1@gmail.com', address: 'R. do exemplo, nº 123 1º esquerdo direito')
Catalog.create(text: 'EXAMPLE TEXT', exp_title: 'LOOKING FOR PERSONALIZED EXPERIENCES?', exp_text: 'Please tell us what you want in your personalized experience.')
Faq.create()
Question.create(name:'Pergunta 1', answer:'Resposta', faq_id:'1')