/**
 * Created by Íõº÷ on 2017/5/4.
 */

var server = require("./service");
var router = require("./router");
var requestHandlers = require("./requestHandlers");


var handle = {};
handle["/"] = requestHandlers.start;
handle["/start"] = requestHandlers.start;
handle["/upload"] = requestHandlers.upload;


server.start(router.route,handle);