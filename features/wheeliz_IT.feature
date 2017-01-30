Feature: Wheeliz test page IT

  Scenario: Le titre de la page est "Auto adattate - Paris"
    Given I am on "https://www.wheeliz.com/it/s/paris"
    Then I should have a page with "Auto adattate - Paris" as title

  Scenario: Le drapeau du footer est celui de l'italie
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should see italian flag in the footer