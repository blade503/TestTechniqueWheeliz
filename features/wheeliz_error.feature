Feature: Page d'erreur (FR)

  Scenario: Je saisi une URL qui n'existe pas
    Given I am on "https://www.wheeliz.com/404"
    Then I should see "La page demandée n'existe pas"

  Scenario: Le code d'erreur est valide
    Given I am on "https://www.wheeliz.com/404"
    Then I should receive "403" error