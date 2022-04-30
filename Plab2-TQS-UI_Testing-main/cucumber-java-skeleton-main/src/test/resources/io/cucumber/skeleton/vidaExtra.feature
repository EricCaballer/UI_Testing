Feature: As a user I want to go to "VidaExtra"
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I accept and I close cookies

  Scenario: I should see the button "VidaExtra"
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "VidaExtra" button with the next "empty" ID
    Then I click on the "VidaExtra" button with the next "empty" ID

  Scenario: Accept cookies from a new page
    Given I go to the link "https://www.vidaextra.com/?utm_source=3djuegos&utm_medium=network&utm_campaign=footer" indicated
    Then I should see a "Aceptar y Cerrar" button with the next "empty" ID
    Then I accept and I close cookies Page Extra

  Scenario: Click "Analisis"
    Given I go to the link "https://www.vidaextra.com/?utm_source=3djuegos&utm_medium=network&utm_campaign=footer" indicated
    When I should see a "ANÁLISIS" button with the next "empty" ID
    Then I click on the "ANÁLISIS" button with the next "empty" ID
    Then I should see a "Más antiguas" button with the next "empty" ID

  Scenario: Click "Archivo de noticias"
    Given I go to the link "https://www.vidaextra.com/categoria/analisis" indicated
    Then I should see a "Archivo de noticias" button with the next "empty" ID
    Then I click on the "Archivo de noticias" button with the next "empty" ID