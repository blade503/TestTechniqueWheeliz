<?php

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends \Behat\MinkExtension\Context\MinkContext
{
    private $session;

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
        $driver = new \Behat\Mink\Driver\GoutteDriver();
        $this->session = new \Behat\Mink\Session($driver);
        $this->session->start();
    }

    /**
     * @Then I should see french flag in the footer
     */
    public function iShouldSeeFrenchFlagInTheFooter()
    {
        $this->session->visit("https://www.wheeliz.com/fr/s/paris");
        $page = $this->session->getPage();
        $flag = $page->find('css', '.dropdown > .dropdown-toggle > .visible-xs-inline');
        return $flag->getHtml() == "Français";
    }

    /**
     * @Then I should not see french flag in the footer
     */
    public function iShouldNotSeeFrenchFlagInTheFooter()
    {
        $this->session->visit("https://www.wheeliz.com/it/s/paris");
        $page = $this->session->getPage();
        $flag = $page->find('css', '.dropdown > .dropdown-toggle > .visible-xs-inline');
        return $flag->getHtml() != "Français";
    }

    /**
     * @Then I should see italian flag in the footer
     */
    public function iShouldSeeItalianFlagInTheFooter()
    {
        $this->session->visit("https://www.wheeliz.com/it/s/paris");
        $page = $this->session->getPage();
        $flag = $page->find('css', '.dropdown > .dropdown-toggle > .visible-xs-inline');
        return $flag->getHtml() == "Italiano";
    }

    /**
     * @Then I should have a page with :arg1 as title
     */
    public function iShouldHaveAPageWithAsTitle($arg1)
    {
        $this->session->visit("https://www.wheeliz.com/fr/s/paris");
        $page = $this->session->getPage();
        $title = $page->find('css', '.pageTitle > .text-green');
        return $title->getHtml() == $arg1;

    }

    /**
     * @Then I should receive :arg1 error
     */
    public function iShouldReceiveError($arg1)
    {
        $this->session->visit("https://www.wheeliz.com/404");
        return $this->session->getStatusCode() == $arg1;

    }






}
