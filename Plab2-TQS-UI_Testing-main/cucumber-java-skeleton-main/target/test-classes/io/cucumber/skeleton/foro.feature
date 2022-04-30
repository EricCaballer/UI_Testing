Feature: As a user I want to search in "Foro"
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: I should see the foro button
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "Foros" button with the next "empty" ID
    When I click on the "Foros" button with the next "empty" ID

  Scenario: I should see "Foros" searcher
    When I go to the link "https://www.3djuegos.com/foros/" indicated
    Then I should see a "Buscar en este foro" bar with the next "form_busca_foro_q" ID

  Scenario: I enter info in "Foros" searcher
    When I go to the link "https://www.3djuegos.com/foros/" indicated
    When I send to "form_busca_foro_q" id an element "vendido"
    When I click on enter in bar with "form_busca_foro_q" id
    Then I should see a "VENDIDO" text with the next "empty" ID
