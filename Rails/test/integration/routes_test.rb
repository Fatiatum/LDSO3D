require 'test_helper'

class RoutesTest < ActionDispatch::IntegrationTest
  
  ## WELCOME ##
  test "route welcome index with locale en" do
  	assert_routing 'en/welcome/index', { :controller => "welcome", :action =>"index", locale: "en" }
  end

  test "route welcome edit with locale en" do
  	assert_routing 'en/welcome/index/edit', { :controller => "welcome", :action =>"edit", locale: "en", id: "index" }
  end

  test "route welcome index with locale pt" do
  	assert_routing 'pt/welcome/index', { :controller => "welcome", :action =>"index", locale: "pt" }
  end

  test "route welcome edit with locale pt" do
  	assert_routing 'pt/welcome/index/edit', { :controller => "welcome", :action =>"edit", locale: "pt", id: "index" }
  end

  test "route welcome show with locale en" do
  	assert_routing 'en/welcome/show', { :controller => "welcome", :action =>"show", locale: "en", id: "show" }
  end

  test "route welcome show with locale pt" do
  	assert_routing 'pt/welcome/show', { :controller => "welcome", :action =>"show", locale: "pt", id: "show" }
  end



  ## ABOUT ##
  test "route about index with locale en" do
  	assert_routing 'en/about/index', { :controller => "about", :action => "show", locale: "en", id: "index"}
  end

  test "route about edit with locale en" do
  	assert_routing 'en/about/index/edit', { :controller => "about", :action =>"edit", locale: "en", id: "index" }
  end

  test "route about show with locale en" do
  	assert_routing 'en/about/show', { :controller => "about", :action =>"show", locale: "en", id: "show" }
  end

  test "route about index with locale pt" do
  	assert_routing 'pt/about/index', { :controller => "about", :action => "show", locale: "pt", id: "index"}
  end

  test "route about edit with locale pt" do
  	assert_routing 'pt/about/index/edit', { :controller => "about", :action =>"edit", locale: "pt", id: "index" }
  end

  test "route about show with locale pt" do
  	assert_routing 'pt/about/show', { :controller => "about", :action =>"show", locale: "pt", id: "show" }
  end



  ## CATALOG ##
  test "route catalog index with locale en" do
  	assert_routing 'en/catalog/index', { :controller => "catalog", :action => "show", locale: "en", id: "index"}
  end

  test "route catalog edit with locale en" do
  	assert_routing 'en/catalog/index/edit', { :controller => "catalog", :action =>"edit", locale: "en", id: "index" }
  end

  test "route catalog show with locale en" do
  	assert_routing 'en/catalog/show', { :controller => "catalog", :action =>"show", locale: "en", id: "show" }
  end

  test "route catalog index with locale pt" do
  	assert_routing 'pt/catalog/index', { :controller => "catalog", :action => "show", locale: "pt", id: "index"}
  end

  test "route catalog edit with locale pt" do
  	assert_routing 'pt/catalog/index/edit', { :controller => "catalog", :action =>"edit", locale: "pt", id: "index" }
  end

  test "route catalog show with locale pt" do
  	assert_routing 'pt/catalog/show', { :controller => "catalog", :action =>"show", locale: "pt", id: "show" }
  end



  ## CONTACTS ##
  test "route contacts index with locale en" do
  	assert_routing 'en/contacts/index', { :controller => "contacts", :action => "show", locale: "en", id: "index"}
  end

  test "route contacts edit with locale en" do
  	assert_routing 'en/contacts/index/edit', { :controller => "contacts", :action =>"edit", locale: "en", id: "index" }
  end

  test "route contacts show with locale en" do
  	assert_routing 'en/contacts/show', { :controller => "contacts", :action =>"show", locale: "en", id: "show" }
  end

  test "route contactsg index with locale pt" do
  	assert_routing 'pt/contacts/index', { :controller => "contacts", :action => "show", locale: "pt", id: "index"}
  end

  test "route contacts edit with locale pt" do
  	assert_routing 'pt/contacts/index/edit', { :controller => "contacts", :action =>"edit", locale: "pt", id: "index" }
  end

  test "route contacts show with locale pt" do
  	assert_routing 'pt/contacts/show', { :controller => "contacts", :action =>"show", locale: "pt", id: "show" }
  end


  ## FAQ ##
  test "route faq index with locale en" do
  	assert_routing 'en/faq/index', { :controller => "faq", :action => "show", locale: "en", id: "index"}
  end

  test "route faq edit with locale en" do
  	assert_routing 'en/faq/index/edit', { :controller => "faq", :action =>"edit", locale: "en", id: "index" }
  end

  test "route faq show with locale en" do
  	assert_routing 'en/faq/show', { :controller => "faq", :action =>"show", locale: "en", id: "show" }
  end

  test "route faq index with locale pt" do
  	assert_routing 'pt/faq/index', { :controller => "faq", :action => "show", locale: "pt", id: "index"}
  end

  test "route faq edit with locale pt" do
  	assert_routing 'pt/faq/index/edit', { :controller => "faq", :action =>"edit", locale: "pt", id: "index" }
  end

  test "route faq show with locale pt" do
  	assert_routing 'pt/faq/show', { :controller => "faq", :action =>"show", locale: "pt", id: "show" }
  end

  ## PRODUCTS ##

  test "route products index with locale en" do
  	assert_routing 'en/products/index', { :controller => "products", :action => "show", locale: "en", id: "index"}
  end

  test "route products edit with locale en" do
  	assert_routing 'en/products/index/edit', { :controller => "products", :action =>"edit", locale: "en", id: "index" }
  end

  test "route products show with locale en" do
  	assert_routing 'en/products/show', { :controller => "products", :action =>"show", locale: "en", id: "show" }
  end

  test "route products index with locale pt" do
  	assert_routing 'pt/products/index', { :controller => "products", :action => "show", locale: "pt", id: "index"}
  end

  test "route products edit with locale pt" do
  	assert_routing 'pt/products/index/edit', { :controller => "products", :action =>"edit", locale: "pt", id: "index" }
  end

  test "route products show with locale pt" do
  	assert_routing 'pt/products/show', { :controller => "products", :action =>"show", locale: "pt", id: "show" }
  end


  ## EXPERIENCES ##

   test "route experiences index with locale en" do
  	assert_routing 'en/experiences/index', { :controller => "experiences", :action =>"show", locale: "en", id: "index" }
  end

  test "route experiences new with locale en" do
  	assert_routing 'en/experiences/new', { :controller => "experiences", :action =>"new", locale: "en"}
  end

  test "route experiences index with locale pt" do
  	assert_routing 'pt/experiences/index', { :controller => "experiences", :action =>"show", locale: "pt", id: "index" }
  end

  test "route experiences new with locale pt" do
  	assert_routing 'pt/experiences/new', { :controller => "experiences", :action =>"new", locale: "pt"}
  end


  ## QUESTIONS ## 

  test "route questions index with locale en" do
  	assert_routing 'en/questions/index', { :controller => "questions", :action =>"show", locale: "en", id: "index" }
  end

  test "route questions new with locale en" do
  	assert_routing 'en/questions/new', { :controller => "questions", :action =>"new", locale: "en"}
  end

  test "route questions index with locale pt" do
  	assert_routing 'pt/questions/index', { :controller => "questions", :action =>"show", locale: "pt", id: "index" }
  end

  test "route questions new with locale pt" do
  	assert_routing 'pt/questions/new', { :controller => "questions", :action =>"new", locale: "pt"}
  end

end
