###
WARNING: USE FOR LEARNING PURPOSES ONLY, DO NOT USE FOR ILLEGAL ACTIVITIES

This code is licensed under the GPLv2 License. See COPYING
###

USERNAME = "EPORTAL_COOKIE_USERNAME"
PASSWORD = "EPORTAL_COOKIE_PASSWORD"

cookie = {
    get: (key) ->
        # NO SAME NAMED TEMP VARIABLE (_cookie as cookie is bad)
        # coffeescript would override object `cookie`
        for _cookie in document.cookie.split("; ")
            cookie_parsed = _cookie.split("=")

            if cookie_parsed[0] == key
                return cookie_parsed[1]

        return ""
}

do () ->
    account = {
        username: cookie.get(USERNAME)
        password: cookie.get(PASSWORD)
    }
