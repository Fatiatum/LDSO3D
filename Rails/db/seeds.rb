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
	phone_pt: '2XXXXXXXX', phone_en: '2XXXXXXXX', 
	email_pt: 'email@mail.com', email_en: 'email@mail.com',
	address_pt: 'R. do exemplo, nº 123 1º esquerdo direito', address_en: 'R. do exemplo, nº 123 1º esquerdo direito')

Catalog.create(text_pt: 'TEXTO DE EXEMPLO', text_en: 'EXAMPLE TEXT',
	exp_title_pt: 'Á PROCURA DE EXPERIENCIAS PERSONALIZADAS?', exp_title_en: 'LOOKING FOR PERSONALIZED EXPERIENCES?', 
	exp_text_pt: 'Diga-nos o que procura na sua experiencia.', exp_text_en: 'Please tell us what you want in your personalized experience.')

Faq.create()

Question.create(name_pt:'Porque é necessário contratar um empresa para organizar um evento?', name_en:'Why should I hire a company to organize a event?',
	answer_pt:'Organizar um evento, embora possa parecer simples, envolve um trabalho complexo e de muita dedicação para que seja inesquecível.
A empresa responsabiliza-se pela articulação com vários fornecedores e entidades, liberando os anfitriões de todas as preocupações envolventes para que estes possam apenas tirar o melhor proveito da festa.
É ainda importante para mediar e solucionar situações de emergência e qualquer imprevisto que possa surgir, de uma forma rápida e eficaz.
', answer_en:'Organizing an event, despite seeming something simple, involves a complex work and a lot of dedication so as to make it something unforgettable.
Our company takes responsibility for the coordination with various suppliers and entities, setting the hosts free of all the surrounding concerns and allowing them to take advantage of the party to the fullest.
It is also important to mediate and to solve emergencies and unexpected situations that may occur, quickly and effectively.
',
	faq_id:'1')
	
Question.create(name_pt:'Quanto custa uma festa?', name_en:'How much will a party cost me?',
	answer_pt:'Os preços variam consoante o tipo de evento, atividades praticadas e alojamento. E empresa criou diversos pacotes, adaptados a vários gostos e com diversas opções para que assim se adeque a todos os orçamentos.
Fora dos pacotes oferecidos também é possível personalizar-los, sob orçamento.', answer_en:'The prices differ depending on the type of event, performed activities and accommodation. We created several packages, adapted to various tastes and with diverse options that can fit any budget.
Besides the offered packages, there is also the option to personalize them, under budget.',
	faq_id:'1')
	
Question.create(name_pt:'A contratação dos serviços tem que ser obrigatoriamente os pacotes disponibilizados?', name_en:'Does the hire of the services necessarily have to be one of the available packages?',
	answer_pt:'Não. Para além dos pacotes já criados, o cliente pode personalizar o seu evento e sugerir outras actividades não contempladas. Todavia, a personalização ficará sempre sobre condição de admissibilidade e orçamento.
', answer_en:'No. Besides the package that are already existent, the clients can personalize their event and suggest other activities not contemplated. However, this personalization will always be under the conditions of admissibility and budget.',
	faq_id:'1')
	
Question.create(name_pt:'Que tipo de alojamento oferece a empresa?', name_en:'What type of accommodation does the company offer?',
	answer_pt:'Na escolha do pacote o cliente vai escolher a opção de alojamento. No caso de escolher a opção de "luxo", a empresa garante o alojamento num hotel de cinco estrelas, ou, não sendo hotel, uma casa rural (no caso de ser na região do Douro) de luxo.
', answer_en:'During the choice of the package, the client will be able to choose the option of accommodation. In case they choose the "luxury" option, the company guarantees accommodation on a five star hotel, or in case of it not being an hotel, a luxurious rural cottage(in case of being in the Douro region).
',
	faq_id:'1')
	
Question.create(name_pt:'Porque é importante o número de pessoas?', name_en:'Why is the number of people important?',
	answer_pt:'O número de pessoas é importante para diversas valências. Desde o alojamento, ao restaurante, e aos locais frequentados e atividades realizadas.
Existem atividades que têm número mínimo e máximo para que se possam realizar.
', answer_en:'he number of people is important for several aspects. From the accommodation and restaurant to the frequented places and performed activities.
There are activities with a minimum and maximum number of people allowed so that they may be realized.
',
	faq_id:'1')
	
Question.create(name_pt:'Apenas organizam festas no Porto?', name_en:'Do you only organize parties in Oporto?',
	answer_pt:'As festas organizadas pela YourOportoParty realizam-se na cidade do Porto bem como na famosa região do Douro.
Eventualmente poderemos organizar algum evento personalizado e específico (a sugerir pelo cliente) na zona norte do país.
', answer_en:'he parties organize by YourOportoParty are realized in the city of Oporto and in the famous region of Douro.
Eventually we may organize some specific and personalized event (to be suggested by the client) in the north region of the country. 
',
	faq_id:'1')
	
Question.create(name_pt:'Os valores apresentados incluem transporte?', name_en:'Do the presented values include transportation?',
	answer_pt:'Não. o transporte é uma opção do cliente. Caso necessitem de transporte e em função do pacote escolhido a empresa apresenta um orçamento.', answer_en:'No. The transportation is a client\'s option. In case they need a transport and according to the chosen package, the company will present an appropriate budget.',
	faq_id:'1')

Product.create(name_pt: 'Your OPorto Romântico', name_en: 'Your Porto Romantic', description_pt: 'Vem apreciar de uma escapada romântica na maravilhosa cidade do Porto.', description_en: 'Enjoy a romantic getaway in the wonderful cityof Oporto.', image: '/assets/images/índice.jpg')
Product.create(name_pt: 'Your OPorto Aventura', name_en: 'Your Porto Adventure', description_pt: 'Vem aventurar-te na magnética cidade do Porto e no energético rio Douro. ', description_en: 'Be adventurous in the magnetic Oporto and energetic Douro river.', image: 'oporto-adventure-tours.jpg' )
Product.create(name_pt: 'Your OPorto Afrodisíaco', name_en: 'Your Porto Aphrodisiac', description_pt: 'Vem desfrutar de um encontro afrodisíaco na quente cidade do Porto.', description_en: 'Enjoy an aphrodisiac encounter in the hot city of Oporto.', image: 'romantic_date_tips_at_home.jpg' )

Experience.create(program_type: 'Night', package_type: 'Standard', description_pt: 'Hotel + Jantar', description_en: 'Hotel + Dinner', price: '100€', Product_id: '1' )
Experience.create(program_type: 'Day', package_type: 'Budget', description_pt: 'Rafting no Douro', description_en: 'Rafting at Douro', price: '50€', Product_id: '2' )
Experience.create(program_type: 'Completo', package_type: 'Lux', description_pt: 'Massagem + Jantar + Limosine + Hotel', description_en: 'Massage + Dinner + Limosine + Hotel', price: '500€', Product_id: '3' )
Experience.create(program_type: 'Night', package_type: 'Budget', description_pt: 'Jantar', description_en: 'Dinner', price: '20€', Product_id: '1' )

	
