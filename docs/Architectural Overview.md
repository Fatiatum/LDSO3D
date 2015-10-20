

**Visão geral da Arquitetura**
==========================

Introdução
----------

O projeto consiste na criação de um website para a empresa YourOportoParty, de modo a que esta possua um método de publicitar e vender os seus produtos através da internet, tendo como público-alvo adultos interessados em vivenciar as experiencias disponibilizadas pela empresa.
A página web produzida deverá incorporar ligações com redes sociais, ser simples, rápida, responsiva, permitindo assim a sua fácil adaptação a equipamentos móveis, como por exemplo smartphones. Deverá ainda permitir uma compra segura dos produtos publicitados e dar ao utilizador a possibilidade de criar o seu próprio pacote de eventos.
O produto deste projeto deverá distinguir-se através da sua simplicidade estética e de utilização, rapidez e segurança.
Através da criação deste produto o cliente possuirá assim uma plataforma para divulgar e vender os seus produtos.
Nos próximos pontos iremos abordar a arquitetura tecnológica do projeto, isto é, as tecnologias utilizadas, a arquitetura lógica e física, bem como alguns fatores de decisão importantes para o projeto.


Arquitetura Tecnológica
-----------------------------

Para este projeto, as tecnologias que decidimos adotar são Ruby on Rails e Angular.js. A escolha por estas tecnologias prendeu-se pelo facto das frameworks serem de fácil aprendizagem e utilização e pelo facto de se aplicarem bem à dimensão do projeto. 

 1. Ruby on Rails(RoR)
	
	Segundo a prespetiva de escalabilidade do projeto, percebemos que a utilização de Ruby on Rails é de grande utilidade, sendo que o facto do RoR ser uma framework de MVC(Model-View-Controller) diminui a complexidade que existe quando se constrói uma aplicação de raiz. 
	
 2. Angular.js
	 
	 A escolha da utilização de Angular.js veio pelo facto de considerarmos de grande importância para o projeto em questão, termos um site responsivo e com uma forte componente gráfica e visual. Deste modo achamos que existir uma abstração de algum do trabalho que uma aplicação web exige, teria um valor acentuado.


Arquitetura Lógica
----------------------

![Logical Architecture Diagram](/docs/images/logical_architecture.png)

Arquitetura Física
---------------------

Referências
--------------