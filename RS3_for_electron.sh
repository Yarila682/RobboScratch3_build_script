#!/bin/bash

#python3 RS3_electron_rasberry.py -f "lib.min.js" -s "/build/static/robbo_assets/searching.gif" -sr "./static/robbo_assets/searching.gif"
#python3 RS3_electron_rasberry.py -f "lib.min.js" -s "/build/static/robbo_assets/icon_close_window.png" -sr "./static/robbo_assets/icon_close_window.png" 
#python3 RS3_electron_rasberry.py -f "lib.min.js" -s "/build/static/robbo_assets/icon_close_window_old.svg" -sr "./static/robbo_assets/icon_close_window_old.svg" 
python3 RS3_electron_rasberry.py -f "lib.min.js" -s "/build/static/robbo_assets" -sr "./static/robbo_assets" 
#python3 RS3_electron_rasberry.py -f "lib.min.js" -s "node_fs.readFileSync('settings.json')" -sr "node_fs.readFileSync(electron_app.getAppPath()+'/settings.json')" 
#python3 RS3_electron_rasberry.py -f "lib.min.js" -s 'const getos = require("getos")' -sr 'const electron_app = require("electron").remote.app; const getos = require("getos");' 
