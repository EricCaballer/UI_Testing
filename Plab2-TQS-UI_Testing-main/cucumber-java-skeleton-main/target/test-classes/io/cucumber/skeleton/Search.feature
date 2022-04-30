Feature: Testing search bar
  Scenario: I accept cookies
    Given I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: I see search bar
    Given I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "Buscador" bar with the next "bus_superior" ID

    #q hace referencia al nombre de la barra
  Scenario: I write on search bar
    Given I go to the link "https://www.3djuegos.com/" indicated
    When I send to "q" name an element "fifa"
    When I click on enter in bar with "q" name
    Then I should see a "Resultados de la búsqueda" text with the next "empty" ID
    Then I should see a "FIFA 22: Ultimate Team" text with the next "empty" ID
#Antes era noticias
  Scenario: I click on "Portada"
    Given I go to the link "https://www.3djuegos.com/?q=fifa&zona=resultados-buscador&ni=1" indicated
    When I should see a "Portada" button with the next "empty" ID
    When I click on the "Portada" button with the next "empty" ID
    Then I should see a "Noticias" text with the next "empty" ID

  Scenario: I click on "Noticias"
    Given I go to the link "https://www.3djuegos.com/?q=fifa&zona=resultados-buscador&ni=1" indicated
    When I should see a "Noticias" text with the next "empty" ID
    When I click on the "Noticias" button with the next "empty" ID

