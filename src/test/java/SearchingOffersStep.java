import com.codeborne.selenide.Configuration;
import io.cucumber.java8.En;
import org.example.HomePage;
import org.example.ResultPage;

import static com.codeborne.selenide.Selenide.open;

public class SearchingOffersStep implements En {

    private HomePage homePage;
    private ResultPage resultPage;

    public SearchingOffersStep() {

        Configuration.startMaximized = true;
        Configuration.holdBrowserOpen = true;

        Given("User opens page", () -> {
            open("https://www.pracuj.pl/");
        });

        Given("User clicks cookie confirmation button", () -> {
            homePage = new HomePage();
            homePage.clickCookieConfirmationButton();
        });

        Given("User inputs key words {string}", (String keyWords) -> {
            homePage.inputKeyWords(keyWords);
        });

        Given("User inputs region {string}", (String region) -> {
            homePage.inputRegion(region);
        });

        Given("User selects range {string}", (String range) -> {
            homePage.selectRegionRange(range);
        });

        Given("User clicks search button", () -> {

            resultPage = homePage.clickSearchButton();
        });

        Given("User selects remote job and remote recruitment", () -> {
//            resultPage = new ResultPage();
            resultPage.selectRemoteJob();
            resultPage.selectRemoteRecruitment();
        });

        When("User reads all offers by criteria {string}", (String criteria) -> {
            resultPage.readOffersAndVerifyCriteria(criteria);
        });

        Then("Offers are saved", () -> {
            // Write code here that turns the phrase above into concrete actions
            throw new io.cucumber.java8.PendingException();
        });


    }
}
