*** Settings ***
Library               RequestsLibrary


*** Test Cases ***
API_GET_TEST
    ${get_response}   GET    https://simple-books-api.glitch.me/status
    Log to console      status ${get_response}

API_GET_TEST
    ${get_response}   GET    https://simple-books-api.glitch.me/books
    Log to console      books ${get_response}


