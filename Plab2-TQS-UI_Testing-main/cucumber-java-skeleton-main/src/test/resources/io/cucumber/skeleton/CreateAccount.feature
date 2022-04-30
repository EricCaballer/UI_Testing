Feature: As a user I want to create an account
  Scenario: I accept cookies
    When I go to the link "https://www.3djuegos.com/" indicated
    When I accept and I close cookies

  Scenario: Creating Account System
    When I go to the link "https://www.3djuegos.com/" indicated
    Then I should see a "Regístrate gratis" button with the next "empty" ID

  Scenario: Click "Registrate gratis"
    Given I go to the link "https://www.3djuegos.com/" indicated
    When I click on the "Regístrate gratis" button with the next "empty" ID
    Then I go to the link "https://www.3djuegos.com/foros/index.php?zona=formulario_registro" indicated
    
  Scenario: Regístrate gratis
    Given I go to the link "https://www.3djuegos.com/foros/index.php?zona=formulario_registro" indicated
    Then I should see a "Registrarme en 3DJuegos" button with the next "empty" ID
    Then I should see a "NOMBRE DE USUARIO (NICK)" square with the next "reg_nick" name
    Then I should see a "Comprobar Disponibilidad" square with the next "boton_test" ID
    Then I should see a "TU CORREO ELECTRÓNICO" square with the next "reg_email1" ID
    Then I should see a "ESCRIBE DE NUEVO TU CORREO" square with the next "reg_email2" ID
    Then I should see a "CLAVE DE ACCESO" square with the next "reg_password" ID
    Then I should see a "Día" square with the next "reg_dia" name
    Then I should see a "Mes" square with the next "empty" ID
    Then I should see a "Año" square with the next "empty" ID

  Scenario: Trying User Name
    Given I go to the link "https://www.3djuegos.com/foros/index.php?zona=formulario_registro" indicated
    When I send to "reg_nick" name an element "NickName"
    When I click on the "Comprobar disponibilidad" button with the next "boton_test" ID
    Then I should see a "El nombre está siendo usado por otro usuario" text with the next "pepito" ID
    # pepito = Lo siento, el nombre de usuario "NickName" está siendo usado por otro usuario. --> no se puede hacer por texto por problemas con las "".

  Scenario: Trying Email
    Given I go to the link "https://www.3djuegos.com/foros/index.php?zona=formulario_registro" indicated
    When I send to "reg_nick" name an element "NickName12251"
    When I send to "reg_email1" name an element "NickName2@gmail.com"
    When I send to "reg_email2" name an element "NickName2@gmail.com"
    When I send to "reg_password" name an element "NickNamePASS"
    When I send to "reg_dia" name an element "12"
    When I send to "reg_mes" name an element "Noviembre"
    When I send to "reg_year" name an element "2001"
    When I click on the "Registrarme en 3DJuegos" button with the next "empty" ID
    #Then I should see a "Confirmación de registro" text
