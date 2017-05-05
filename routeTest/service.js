/**
 * Created by Íõº÷ on 2017/5/4.
 */
var http = require("http");
var url = require("url");

function start(route,handle){
    function onRequest(req,res){
        var pathname = url.parse(req.url).pathname;
        console.log("Request for " + pathname + "received");
        var content = route(handle,pathname);
        res.writeHead(200,{"Content-Type":"text/plain"});
        res.write(content);
        res.end();
    }
    http.createServer(onRequest).listen(8080);

    console.log("http move in here£¡");
}

exports.start = start;

