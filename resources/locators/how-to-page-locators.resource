*** Variables ***
&{HOW_TO_LOCATORS}
# Globals
...                     LEFT_MENU_TITTLE=xpath=//*[@id="leftmenuinnerinner"]//h2[@class="left"]
...                     HEADER=xpath=//*[@id="main"]//h1
# Modal Boxes
...                     MODAL_BOXES_OPTION=xpath=//a[@class="no-checkmark" and @href="howto_css_modals.asp"]
...                     MODAL_BOXES_MODAL_HEADER=xpath=//*[@id="id01"]/div/header/h2
...                     MODAL_BOXES_MODAL_CONTENT=xpath=//*[@id="id01"]/div/div/p[1]
...                     MODAL_BOXES_MODAL_FOOTER=xpath=//*[@id="id01"]/div/footer/p
...                     MAIN_OPEN_MODAL_BUTTON=xpath=//*[@id="main"]//button
...                     MAIN_CLOSE_MODAL_BUTTON=xpath=//*[@id="id01"]/div/header/span
# Filter List
...                     FILTER_LIST_OPTION=xpath=//a[@class="no-checkmark" and @href="howto_js_filter_lists.asp"]
...                     FILTER_LIST_SEARCH=xpath=//input[@id="myInput"]
...                     FILTER_LIST_RESULT_BY_NAME=xpath=//ul[@id="myUL"]/li/a[normalize-space(text())="name"]
...                     FILTER_LIST_RESULT=xpath=//ul[@id="myUL"]
