Feature: Wheeliz test page FR

  #Version 1 Qui n'évolue pas
  Scenario: Nombre de voitures affiché inccorect
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should not see "39 voitures trouvées près de Paris"

  Scenario: Nombre de voitures affiché correct
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should see "40 voitures trouvées près de Paris"

  #Version 2 qui évolue et compare le nombre d'éléments au nombre mentionné dans le titre
  Scenario: Le total est égal au nombre d'éléments
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should have a count equal to the number of element in the list

  #Vérification du drapeau dans le footer. Positif
  Scenario: Le drapeau du footer est celui de la france
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should see french flag in the footer

  #Vérification du drapeau dans le footer. Negatif
  Scenario: Le drapeau du footer n'est pas celui de la france
    Given I am on "https://www.wheeliz.com/it/s/paris"
    Then I should not see french flag in the footer

  #Vérification titre de page
  Scenario: Le titre de la page est "Voitures adaptées - Paris"
    Given I am on "https://www.wheeliz.com/fr/s/paris"
    Then I should have a page with "Voitures adaptées - Paris" as title

