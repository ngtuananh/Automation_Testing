Feature: Login functionality
    As a web user,
    I want to log in website

    Background:
        Given the login page is opened successfully

    @login_valid
    Scenario: Login Valid
        When user enter username "tomsmith" and password "SuperSecretPassword!"
        Then the message "You logged into a secure area!×" should be displayed

    @login_invalid
    Scenario Outline: Login Invalid
        When user enter username "<username>" and password "<password>"
        Then the message "<message>" should be displayed

        Examples:
            | username | password             | message                    |
            | smithtom | SuperSecretPassword! | Your username is invalid!× |
            | tomsmith | SecretPassword!      | Your password is invalid!× |