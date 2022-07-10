package test.steps;

import cucumber.api.java.en.Then;
import main.pages.MyAccountPage;
import org.openqa.selenium.WebDriver;

import static org.junit.Assert.*;

public class CompareSteps {
  private MyAccountPage myAccountPage = new MyAccountPage();

  @Then("^Check if you are logged in$")
  public void checkIfSomething() {
    assertTrue(myAccountPage.returnBtn().getText().contains("Sign out"));

  }

  @Then("^Check error box contain (.+)")
  public void checkErrorBox(String msg) {
    assertTrue(myAccountPage.returnErrorBox().getText().contains(msg));
  }

  @Then("^Check mini error box contain (.+)")
  public void checkMiniErrorBox(String msg) {
    assertTrue(myAccountPage.returnMiniErrorBox().getText().contains(msg));
  }
}
