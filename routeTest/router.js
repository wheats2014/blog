/**
 * Created by Íõº÷ on 2017/5/4.
 */
function route(handle,pathname){
    console.log("About route from " + pathname);

    if(typeof handle[pathname] === 'function'){
        return handle[pathname]();
    }else{
        console.log("This request is 404");
        return "404 Not found;";
    }
}

exports.route = route;