~ $ curl -i -v -X GET https://syndication.twitter.com/settings
Note: Unnecessary use of -X or --request, GET is already inferred.
*   Trying 104.244.42.8:443...
* Connected to syndication.twitter.com (104.244.42.8) port 443 (#0)
* ALPN, offering h2
* ALPN, offering http/1.1
* successfully set certificate verify locations:
*  CAfile: /data/data/com.termux/files/usr/etc/tls/cert.pem
*  CApath: /data/data/com.termux/files/usr/etc/tls/certs
* TLSv1.3 (OUT), TLS handshake, Client hello (1):
* TLSv1.3 (IN), TLS handshake, Server hello (2):
* TLSv1.3 (IN), TLS handshake, Encrypted Extensions (8):
* TLSv1.3 (IN), TLS handshake, Certificate (11):
* TLSv1.3 (IN), TLS handshake, CERT verify (15):
* TLSv1.3 (IN), TLS handshake, Finished (20):
* TLSv1.3 (OUT), TLS change cipher, Change cipher spec (1):
* TLSv1.3 (OUT), TLS handshake, Finished (20):
* SSL connection using TLSv1.3 / TLS_AES_256_GCM_SHA384
* ALPN, server accepted to use h2
* Server certificate:
*  subject: C=US; ST=California; L=San Francisco; O=Twitter, Inc.; CN=syndication.twitter.com
*  start date: Mar 24 00:00:00 2021 GMT
*  expire date: Mar 23 23:59:59 2022 GMT
*  subjectAltName: host "syndication.twitter.com" matched cert's "syndication.twitter.com"
*  issuer: C=US; O=DigiCert Inc; CN=DigiCert TLS RSA SHA256 2020 CA1
*  SSL certificate verify ok.
* Using HTTP2, server supports multiplexing
* Connection state changed (HTTP/2 confirmed)
* Copying HTTP/2 data in stream buffer to connection buffer after upgrade: len=0
* Using Stream ID: 1 (easy handle 0xe967ce00)
> GET /settings HTTP/2
> Host: syndication.twitter.com
> user-agent: curl/7.79.1
> accept: */*
>
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* old SSL session ID is stale, removing
< HTTP/2 200
HTTP/2 200
< date: Wed, 06 Oct 2021 17:47:48 GMT
date: Wed, 06 Oct 2021 17:47:48 GMT
< vary: Origin
vary: Origin
< server: tsa_b
server: tsa_b
< content-type: application/json; charset=utf-8
content-type: application/json; charset=utf-8
< cache-control: must-revalidate, max-age=600
cache-control: must-revalidate, max-age=600
< last-modified: Wed, 06 Oct 2021 17:47:48 GMT
last-modified: Wed, 06 Oct 2021 17:47:48 GMT
< content-length: 170
content-length: 170
< strict-transport-security: max-age=631138519
strict-transport-security: max-age=631138519
< x-connection-hash: 8f298b45b108f4ff560ab42728420bfd5277cca960f98399ba72bba110469993
x-connection-hash: 8f298b45b108f4ff560ab42728420bfd5277cca960f98399ba72bba110469993

<
* Connection #0 to host syndication.twitter.com left intact
{"should_obtain_cookie_consent":false,"features":{"tfw_experiments_cookie_expiration":{"bucket":1209600,"version":null~ $
