Feature: As a user I want to see top 100 games
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: Click button Top 100
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "TOP 100 Juegos" button with the next "empty" ID
    Then I click on the "TOP 100 Juegos" button with the next "empty" ID

  Scenario: See Top 100
    When I go to the link "https://www.3djuegos.com/index.php?zona=top100" indicated
    Then I should see a "Top 100 - Los mejores juegos" text with the next "empty" ID
    Then I should see a "Halo Infinite" button with the next "empty" ID
    Then I click on the "Halo Infinite" button with the next "empty" ID

  Scenario: I see info of the game
    When I go to the link "https://www.3djuegos.com/32515/halo-infinite/" indicated
    Then I should see a "También para:" text with the next "empty" ID
    Then I should see a "Desarrollador:" text with the next "empty" ID
    Then I should see a "Editor:" text with the next "empty" ID
    Then I should see a "Género:" text with the next "empty" ID
    Then I should see a "Lanzamiento:" text with the next "empty" ID

  Scenario: I go to "foro"
    When I go to the link "https://www.3djuegos.com/32515/halo-infinite/" indicated
    Then I should see a "Foro de este juego" text with the next "empty" ID
    Then I click on the "Foro de este juego" button with the next "empty" ID