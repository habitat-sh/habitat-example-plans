var http = require('http'),
nconf = require('nconf');

nconf.file({ file: '../config/config.json' });

var port = nconf.get('port');

var body = ` 
<html> 
  <head>
    <title>${nconf.get('message')}</title>
  </head>
  <body>
    <center><h3>${nconf.get('message')}</h3></center>
    <center><img src=${nconf.get('url')}/${nconf.get('width')}/${nconf.get('height')}>
  </body>
</html>
`

var handleRequest = function(request, response) {
    response.writeHead(200, {"Content-Type": "text/html"});
    response.write(body);
    response.end;    
};

var www = http.createServer(handleRequest);
www.listen(port, function() {
    console.log("Running on http://0.0.0.0:%d", port);  
});



