package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.Keys;

import java.util.Objects;

public class WebStepDefinitions {

    /**
     * Note: You must have installed chromedriver in your system
     *       https://chromedriver.chromium.org/downloads
     *       The version must match with the version of your Chrome browser
     */

    private static WebDriver driver;
    private Scenario scenario;

    @BeforeAll
    public static void setUp() {
        // This property is optional.
        // If not specified, WebDriver searches the path for chromedriver in your environment variables
        // Example path for Linux or Mac:
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\ERIC\\Desktop\\cucumber-java-skeleton-main\\chromedriver.exe");
        driver = new ChromeDriver();
    }

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
    }

    @When("I accept and I close cookies")
    public void acceptCloseCookie() {
        String cookieClass = "didomi-popup-container didomi-popup__dialog didomi-popup-notice didomi-popup-notice-info-type didomi-popup-notice-with-data-processing";
        if(((driver.findElement(By.xpath("//div[contains(@class,'" + cookieClass + "')]"))).isDisplayed()))
        {
            driver.findElement(By.id("didomi-notice-agree-button")).click();
        }
    }

    @When("I accept and I close cookies Page Extra")
    public void acceptCloseCookieExtra() {
        String cookieClass = "didomi-popup-view";
        if(((driver.findElement(By.xpath("//div[contains(@class,'" + cookieClass + "')]"))).isDisplayed()))
        {
            driver.findElement(By.id("didomi-notice-agree-button")).click();
        }
    }

    @Then("I go to the link {string} indicated")
    public void iGoToTheLink(String url) {
        driver.get(url);
    }

    @When("I click on the {string} button with the next {string} ID/title/class/name")
    public void iClickOnButton(String button_text, String button_id) throws InterruptedException {
        Thread.sleep(2000);
        if (button_id == "empty"){
            driver.findElement(By.linkText(button_text)).click();
        }else{
            try {
                driver.findElement(By.id(button_id)).click();
            } catch (Exception e1) {
                try {
                    driver.findElement(By.xpath("//*[contains(@title, '"+ button_id+"')]")).click();
                } catch (Exception e2) {
                    try {

                    } catch (Exception e3) {
                        driver.findElement(By.xpath("//*[contains(@class, '" + button_id + "')]")).click();
                    }
                }
            }
        }
    }

    @Then("I should see a {string} button/bar/square/text with the next {string} class/ID/name")
    public void iShouldSeeAButton(String text1, String text2) throws InterruptedException {
        Thread.sleep(2000);
        if (Objects.equals(text2, "empty")) {
            By byXPath = By.xpath("//*[contains(text(),'" + text1 + "')]");
            boolean present = driver.findElements(byXPath).size() > 0;
            Assertions.assertTrue(present);
        } else {
            try {
                By byXPath = By.xpath("//*[contains(@id,'" + text2 + "')]");
                boolean present = driver.findElements(byXPath).size() > 0;
                Assertions.assertTrue(present);
            } catch (Exception e1) {
                try {
                    By byXPath = By.xpath("//*[contains(@class,'" + text2 + "')]");
                    boolean present = driver.findElements(byXPath).size() > 0;
                    Assertions.assertTrue(present);
                } catch (Exception e2) {
                        By byXPath = By.xpath("//*[contains(@name,'" + text2 + "')]");
                        boolean present = driver.findElements(byXPath).size() > 0;
                        Assertions.assertTrue(present);
                }
            }
        }
    }

    @When("I click on enter in bar with {string} name/id")
    public void iClickEnterBar(String element) {
        try {
            WebElement firstField = driver.findElement(By.name(element));
            firstField.sendKeys(Keys.ENTER);
        } catch (Exception e1) {
            WebElement firstField = driver.findElement(By.id(element));
            firstField.sendKeys(Keys.ENTER);
        }
    }

    @When("I send to {string} name/id an element {string}")
    public void sendKeys(String element, String element2) throws InterruptedException {
        try {
            By byXPath = By.xpath("//*[contains(@name,'" + element + "')]");
            WebElement elementIntroduce = driver.findElement(byXPath);
            Thread.sleep(2000);
            elementIntroduce.sendKeys(element2);
        } catch (Exception e1) {
            By byXPath = By.xpath("//*[contains(@id,'" + element + "')]");
            WebElement elementIntroduce = driver.findElement(byXPath);
            Thread.sleep(2000);
            elementIntroduce.sendKeys(element2);
        }
    }

    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }

}
