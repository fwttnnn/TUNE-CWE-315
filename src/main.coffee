USERNAME = '_USERNAME'
PASSWORD = '_PASSWORD'

username = null
pw = null

for c in document.cookie.split(';')
    c_stripped = decodeURIComponent(c.split('=')[1])
    c.includes(USERNAME) and username = c_stripped
    c.includes(PASSWORD) and pw = c_stripped
