# kong-custom-plugins

Contents:
1. Hmac-with-body-validation

## hmac-with-body-validationa
This plugin also validates integrity of request body alongwith user credentials.
This plugin is copied+modified from original Hmac-Auth plugin for KONG. https://getkong.org/plugins/hmac-authentication/

### Changes in this plugin
I have used following headers for creating `signature` for `Authorization` header.

#### Required headers:
1. `date` ( Eg: 'Fri, 09 Oct 2015 00:00:00 GMT' )`
2. `request-line` ( Eg: 'POST /orders/lunch HTTPS/1.1' )
3. `digest` (Sha-256 hash of request body. If no request body then Sha256 of empty string. Eg: '2b8425cc28cdcef409c482b08f48205c1413011f5ecf3b807d4482e3a938c7a4' )
4. `authorization` (Eg: 'hmac username="H1R46m", algorithm="hmac-sha1", headers="date request-line digest", signature="mYTClmoYarIZxpTVjIAQqbybAzE="')
