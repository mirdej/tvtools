const path = require('path');
const Max = require('max-api');
var fs = require('fs');

const homedir = require('os').homedir();
Max.post(homedir);
var valid_extensions = [".MOV", ".mov", ".mp4",".m4v"];

var folder_path = "/Users/tv/Movies/TV.Clips";

const debounce = (mainFunction, delay) => {
    // Declare a variable called 'timer' to store the timer ID
    let timer;

    // Return an anonymous function that takes in any number of arguments
    return function (...args) {
        // Clear the previous timer to prevent the execution of 'mainFunction'
        clearTimeout(timer);

        // Set a new timer that will execute 'mainFunction' after the specified delay
        timer = setTimeout(() => {
            mainFunction(...args);
        }, delay);
    };
};


function sleep(milliseconds) {
    var start = new Date().getTime();
    for (var i = 0; i < 1e7; i++) {
      if ((new Date().getTime() - start) > milliseconds){
        break;
      }
    }
  }


Max.addHandler("path", (msg) => {
    folder_path = homedir + msg.replace("~","/");
    Max.post("Directory",folder_path);
    rebuild_list();
});

function rebuild_list() {
    Max.post("REBUILD LIST");
    Max.outlet("playlist","clear");
    fs.readdir(folder_path, function (err, files) {
        if (err) {
            return Max.post('Unable to scan directory: ' + err);
        }
        files.forEach(function (file) {
            let ext = path.extname(file);
            if (valid_extensions.includes(ext)) {
                Max.outlet("playlist",'append',folder_path+'/'+file);
                sleep(10);
            }
        });
        sleep(100);
        Max.outlet("playlist","getcontent");
        sleep(100);
        Max.outlet("update","bang");
    });
   
}

const debouncedRebuildlist = debounce(rebuild_list, 1000);


fs.watch(folder_path, (eventType, filename) => {
    Max.post("Trig");
    debouncedRebuildlist();
})

//rebuild_list();