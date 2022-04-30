Feature: As a user I want to change the language of the page
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: I see language
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "ESPAÑOL (ES)" bar with the next "boton_selecc_paises_1" ID

  Scenario: I click on language
    When I go to the link "https://www.3djuegos.com/" indicated
    When I click on the "Idiomas" button with the next "boton_selecc_paises_1" ID
    Then I should see a "Español (España) i Español (México)" bar with the next "opciones_selecc_paises_1" ID
    Then I click on the "Español (México)" button with the next "empty" ID

  Scenario: Change language
    Given I go to the link "https://www.3djuegos.com/mx/" indicated
    When I click on the "Idiomas" button with the next "boton_selecc_paises_1" ID
    Then I click on the "Español (España)" button with the next "empty" ID
