package main.pages;

import main.utils.BasePage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class MyAccountPage extends BasePage {

  private static WebDriver driver;
  public static boolean getPageSource(String contain) {
    return driver.getPageSource().contains(contain);
  }
  public MyAccountPage() {
    super();
  }

  @FindBy(xpath = "//a[@title='Log me out']")
  private WebElement logoutBtn;

  @FindBy(css = "div#center_column div.alert.alert-danger")
  private WebElement errorBox;

  @FindBy(css = "div#create_account_error ol li")
  private WebElement miniErrorBox;


  public void logout() {
    logoutBtn.click();
  }

  public WebElement returnBtn() {
    return logoutBtn;
  }

  public WebElement returnErrorBox() {
    return errorBox;
  }

  public WebElement returnMiniErrorBox() {
    return miniErrorBox;
  }
}