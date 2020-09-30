package org.example;

import com.codeborne.selenide.Condition;
import org.openqa.selenium.Keys;

import static com.codeborne.selenide.Selenide.$x;
import static com.codeborne.selenide.Selenide.actions;

public class HomePage {

    public void clickCookieConfirmationButton() {
        $x("//div[@class='bskiisd']/button").waitUntil(Condition.visible, 5000).click();
    }

    public void inputKeyWords(String keyWords) {
        String[] words = keyWords.split(" ");

        System.out.println(words.length);

        for (String word : words) {
            $x("//div[contains(@class, 'slider39vPc2')]/div[@data-test='autocomplete-kw-input']/input").waitUntil(Condition.visible, 3000).sendKeys(word);
            actions().sendKeys(Keys.ENTER).build().perform();
        }
    }

    public void inputRegion(String region) {
        $x("//div[@class='slider39vPc2']/div[@data-test='autocomplete-wp-input']/input").val(region);
        actions().sendKeys(Keys.ARROW_DOWN).sendKeys(Keys.ENTER).build().perform();
    }

    public void selectRegionRange(String range) {
        $x("//div[@data-test='radius-options']/button").click();
        $x("//div[@data-test='radius-options']/ul/li[@data-test='radius-step']/button[contains(text(), '" + range + "')]").click();
    }

    public ResultPage clickSearchButton() {
        $x("//div/form[@data-test='form-sliderSearch']/div/div/button[@data-test='form-submit']").click();
        return new ResultPage();
    }


}
