*** Settings ***
Library               RequestsLibrary


*** Test Cases ***
API_GET_TEST
    ${get_response}   GET    https://simple-books-api.glitch.me/status
    Log to console      status ${get_response}

API_GET_TEST
    ${get_response}   GET    https://simple-books-api.glitch.me/status
    Log to console      status ${get_response}

    ${register_json}   create dictionary  clientName=aki   clientEmail=aki@example.com
    ${post_register_response}    POST  https://simple-books-api.glitch.me/api-clients
    ...                                                         json=${register_json}


