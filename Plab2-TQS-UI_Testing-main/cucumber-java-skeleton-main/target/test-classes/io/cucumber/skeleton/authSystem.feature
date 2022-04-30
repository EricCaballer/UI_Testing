Feature: As a user I do the Authentication System
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: Authentication System
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "Iniciar sesión" button with the next "empty" ID

  Scenario: Click "Iniciar sesion"
    Given I go to the link "https://www.3djuegos.com/" indicated
    When I click on the "Iniciar sesión" button with the next "empty" ID
    Then I go to the link "https://www.3djuegos.com/foros/index.php?zona=iniciar_sesion" indicated

  # Esto es dentro de la pagina de iniciar sesión
  Scenario: "Iniciar sesion"
    When I go to the link "https://www.3djuegos.com/foros/index.php?zona=iniciar_sesion" indicated
    Then I should see a "Iniciar sesión" button with the next "empty" ID
    Then I should see a "Dirección de correo" square with the next "empty" ID
    Then I should see a "Contraseña" square with the next "empty" ID

  Scenario: I introduce random elements to log-in
    Given I go to the link "https://www.3djuegos.com/foros/index.php?zona=iniciar_sesion" indicated
    When I send to "login_email" name an element "myUser"
    When I send to "login_password" name an element "myPassword"
    When I click on the "LogIn" button with the next "login_boton_enviar" ID
    Then I should see a "Información incorrecta" text with the next "empty" ID

  Scenario: I introduce elements to log-in correctly user
    Given I go to the link "https://www.3djuegos.com/foros/index.php?zona=iniciar_sesion" indicated
    When I send to "login_email" name an element "NickName2@gmail.com"
    When I send to "login_password" name an element "NickNamePASS"
    When I click on the "LogIn" button with the next "login_boton_enviar" ID
    Then I should see a "Tu cuenta todavía no está validada" text with the next "empty" ID