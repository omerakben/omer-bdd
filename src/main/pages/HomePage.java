package main.pages;

import main.utils.BasePage;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage extends BasePage {
  public HomePage() {
    super();
  }

  @FindBy(className = "login")
  private static WebElement signInButton;

  public void signInBtn() {
    signInButton.click();
  }
}
