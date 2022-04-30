Feature: As a user I want to test Instagram button
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: I should see Instragram
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "Instagram" button with the next "empty" ID

  Scenario: I click on Instagram
    Given I go to the link "https://www.3djuegos.com/" indicated
    When I click on the "Instagram" button with the next "empty" ID
    Then I go to the link "https://www.instagram.com/3djuegos/" indicated

#_1XyCr hace referencia a la clase del div de las cookies
  Scenario: I accept cookies Instagram
    When I go to the link "https://www.instagram.com/3djuegos/" indicated
    Then I should see a "Aceptar todas" text with the next "empty" ID


