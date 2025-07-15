*** Variables ***
&{HTML_LOCATORS}
# Globals
...                         HEADER=xpath=//*[@id="main"]//h1
# HTML FORMS
...                         HTML_FORMS_OPTION=xpath=//a[text()="HTML Forms" and @href="html_forms.asp"]
...                         GO_TO_HTML=//a[contains(@class, "ga-nav") and @title="HTML Tutorial"]
...                         GO_TO_TRY_IT_YOURSELF_1=(//div[@class='w3-example']//a[contains(@class, 'w3-btn') and contains(text(), 'Try it Yourself')])[1]
# Try It Yourself Page
...                         DIV_TO_EDIT=css=#textarea
...                         DIV_TO_EXECUTION=css=#iframe
...                         INPUT_NAME=css=#iframeResult >>> css=#fname
...                         INPUT_LAST_NAME=css=#iframeResult >>> css=#lname
...                         INPUT_SUBMIT=css=#iframeResult >>> css=input[type="submit"][value="Submit"]
...                         RESULT_SUBMIT_FORM=xpath=//iframe[@id="iframeResult"] >>> xpath=//body//div[contains(@class, 'w3-container')]
