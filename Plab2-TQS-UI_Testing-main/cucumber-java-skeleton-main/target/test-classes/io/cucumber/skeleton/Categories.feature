Feature: As a user I go to all categories
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: I see all categories
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "Inicio" button with the next "empty" ID
    Then I should see a "PC" button with the next "empty" ID
    Then I should see a "PS5" button with the next "empty" ID
    Then I should see a "PS4" button with the next "empty" ID
    Then I should see a "XSeries" button with the next "empty" ID
    Then I should see a "XOne" button with the next "empty" ID
    Then I should see a "Switch" button with the next "empty" ID
    Then I should see a "iOS" button with the next "empty" ID
    Then I should see a "Android" button with the next "empty" ID
    Then I should see a "Noticias" button with the next "empty" ID
    Then I should see a "Videos" button with the next "empty" ID
    Then I should see a "Foros" button with the next "empty" ID


  Scenario: I click all categories
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I click on the "PC" button with the next "empty" ID
    Then I click on the "PS5" button with the next "empty" ID
    Then I click on the "PS4" button with the next "empty" ID
    Then I click on the "XSeries" button with the next "empty" ID
    Then I click on the "XOne" button with the next "empty" ID
    Then I click on the "Switch" button with the next "empty" ID
    Then I click on the "iOS" button with the next "empty" ID
    Then I click on the "Android" button with the next "empty" ID
    Then I click on the "Noticias" button with the next "empty" ID
    Then I click on the "Videos" button with the next "empty" ID
    Then I click on the "Foros" button with the next "empty" ID
