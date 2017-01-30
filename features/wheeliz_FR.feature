Feature: Wheeliz test page FR

  Scenario: Nombre de voitures affiché inccorect
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should not see "39 voitures trouvées près de Paris"

  Scenario: Nombre de voitures affiché correct
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should see "40 voitures trouvées près de Paris"

  Scenario: Le drapeau du footer est celui de la france
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should see french flag in the footer

  Scenario: Le drapeau du footer n'est pas celui de la france
    Given I am on "https://www.wheeliz.com/it/s/paris"
    Then I should not see french flag in the footer

  Scenario: Le titre de la page est "Voitures adaptées - Paris"
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should have a page with "Voitures adaptées - Paris" as title

