var fs = require('fs');
var script = require('./trace');
fs.readFile(process.argv[2], 'utf8', function(err, trace) {
    if (err) {
	return console.log(err);
    }
    var output = script.processTrace(trace);
    return console.log(output);
});
