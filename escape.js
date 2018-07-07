var fs = require('fs');
var jsesc = require('jsesc');
var str="";

// cope and your private ssh key into the keybox.txt file 
//how to run : node escape.js


fs.readFile('keybox.txt', function(err, data) {
    if(err) throw err;
    var array = data.toString().split("\n");
    for(i in array) {
        str+=array[i]+"\n";
        var after = jsesc(str);
    }

//var after = jsesc(str);
console.log("OUTPUT:");
console.log(after);
console.log(" ");
});







