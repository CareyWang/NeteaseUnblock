FROM nondanee/unblockneteasemusic as base 
RUN sed -i 's#^server.whitelist.*$#server.whitelist = ["://[\\w.]*music\\.126\\.net","://[\\w.]*vod\\.126\\.net","://[\\w.]*www\\.gstatic\\.com","://[\\w.]*captive\\.rixcloud\\.io"]#g' /usr/src/app/src/app.js

EXPOSE 8080 8081
ENTRYPOINT ["node", "app.js"]
