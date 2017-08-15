package org.fundacionjala.sfdc.runners;

import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import org.fundacionjala.sfdc.driver.DriverManager;
import org.testng.annotations.AfterTest;

/**
 * Runner class for all tests.
 */
@CucumberOptions(
        plugin = {"pretty"},
        features = {"src/test/resources/features/products"},
        glue = {"org.fundacionjala.sfdc"})
public class Runner extends AbstractTestNGCucumberTests {

    /**
     * Close the browser.
     */
    @AfterTest
    public void closeBrowser() {
        DriverManager.getInstance().quitDriver();
    }
}
