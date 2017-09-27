var http = require('http'),
	nconf = require('nconf');

nconf.file({ file: process.env.APP_CONFIG });

var handleRequest = function(request, response) {
    response.writeHead(200, {"Content-Type": "text/plain"});
    response.end(nconf.get('message'));    
}

var www = http.createServer(handleRequest);
www.listen(process.env.PORT, function() {
    console.log("Running on http://0.0.0.0:%d", process.env.PORT);  
});



