package org.example;

import com.codeborne.selenide.Condition;
import com.codeborne.selenide.Selectors;
import com.codeborne.selenide.SelenideElement;
import com.codeborne.selenide.WebDriverRunner;
import com.google.api.client.util.DateTime;
import com.google.api.services.tasks.model.Task;
import org.mortbay.thread.Timeout;
import org.openqa.selenium.Keys;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import static com.codeborne.selenide.Selenide.*;

public class ResultPage {

    public void selectRemoteJob() {
        $(Selectors.byId("cookieClose")).waitUntil(Condition.visible, 5000).click();
        $x("//div[@id='customNotificationPrompt']/div/div/button[@id='customNotificationPromptNoButton']").click();
        $(Selectors.byClassName("tooltip__close")).click();
        $x("//ul[@class='remote-search-filters__list']/li/button[@data-test='button-remote-work-filter']").click();
    }

    public void selectRemoteRecruitment() {
        $x("//ul[@class='remote-search-filters__list']/li/button[@data-test='button-remote-recruitment-filter']").click();
    }

    public void readOffersAndVerifyCriteria(String criteria) {
        int results = $$(Selectors.byClassName("offer--border")).size();
        int count = 0;

        for (int i=1; i<=results; i++) {
            System.out.println("ofert: " + results);
            SelenideElement offer = $x("(//ul[@class='results__list-container']/li[@class='results__list-container-item']/div/div[@class='offer__info']/div/div[@class='offer-details__text']/h3/a)[" + i + "]")
                    .waitUntil(Condition.visible, 1000);
            offer.click();

            String description = $x("//div[@data-test='section-offerView']").waitUntil(Condition.visible, 3000).getText();

            String[] criteriaTab = criteria.split(" ");
            for (String s : criteriaTab) {
                if (description.contains(s)) {
                    count++;
                }
            }

            if (count > 5) {
                Task task = new Task();
                task.setTitle("Wyslij cv na pracuj.pl");
                task.setNotes("Link do oferty pracy: " + WebDriverRunner.currentFrameUrl());
                task.setDue(new DateTime(Date.valueOf(LocalDate.now().plusDays(1))));
                TasksUtils.addTask(task);

                System.out.println(WebDriverRunner.currentFrameUrl());
            }

            back();

        }



    }
}
