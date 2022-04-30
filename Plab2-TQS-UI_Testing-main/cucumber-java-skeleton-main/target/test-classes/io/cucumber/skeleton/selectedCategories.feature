Feature: As a user I want to test some categories
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: My website can be browsed
    Given I go to the link "https://www.3djuegos.com/" indicated
    When I should see a "PC" button with the next "empty" ID
    Then I click on the "PC" button with the next "empty" ID
    Then I go to the link "https://www.3djuegos.com/juegos/pc/" indicated

  Scenario: See and click to "Noticias PC" button
    Given I go to the link "https://www.3djuegos.com/juegos/pc/" indicated
    When I should see a "Noticias" button with the next "empty" ID
    Then I click on the "Noticias" button with the next "Noticias PC" title
    Then I go to the link "https://www.3djuegos.com/novedades/noticias/juegos-pc/0f1f0f0/fecha/" indicated

  Scenario: See and click to "Populares" button
    Given I go to the link "https://www.3djuegos.com/novedades/noticias/juegos-pc/0f1f0f0/fecha/" indicated
    When I should see a "Populares" button with the next "empty" ID
    Then I click on the "Populares" button with the next "empty" ID



