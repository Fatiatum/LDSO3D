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

Contact.create(text_pt: 'CONTACTS TEXT EXAMPLE', text_en: 'CONTACTS TEXT EXAMPLE',
	phone_pt: '229876123', phone_en: '229876123', 
	email_pt: 'jorge.filipe.teixeira.1@gmail.com', email_en: 'jorge.filipe.teixeira.1@gmail.com',
	address_pt: 'R. do exemplo, nº 123 1º esquerdo direito', address_en: 'R. do exemplo, nº 123 1º esquerdo direito')

Catalog.create(text_pt: 'TEXTO DE EXEMPLO', text_en: 'EXAMPLE TEXT',
	exp_title_pt: 'Á PROCURA DE EXPERIENCIAS PERSONALIZADAS?', exp_title_en: 'LOOKING FOR PERSONALIZED EXPERIENCES?', 
	exp_text_pt: 'Diga-nos o que procura na sua experiencia.', exp_text_en: 'Please tell us what you want in your personalized experience.')

Faq.create()

Question.create(name_pt:'Primeira Pergunta', name_en:'First Question',
	answer_pt:'Resposta', answer_en:'Answer',
	faq_id:'1')