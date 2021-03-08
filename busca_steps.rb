Dado('que acesso a página inicial') do                                       
    visit "http://automationpractice.com/index.php/"
  end                                                                          
                                                                               
  Quando('submeto uma busca por:') do |table|                                           
    user = table.rows_hash
    find("input[id*='search_query_top']").set user[:nomeproduto]

    find("button[name*='submit_search']").click

    click_on "Add to cart"
    sleep 30
  end                                                                          
                                                                               
  Então('devo ver o meu produto e adicioná-lo ao carrinho') do                                           
    expect(page).to have_css'[class*="icon-ok"]'
    expect(page).to have_css'[class*="layer_cart_product col-xs-12 col-md-6"]'
  end                                                                          
                                                                               