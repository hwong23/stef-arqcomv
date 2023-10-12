# $1: ruta usuario
# $2: ruta modelo arq
# $3: ruta programas ajs

# /Applications/Archi.app/Contents/MacOS/Archi -application com.archimatetool.commandline.app -consoleLog -nosplash --modelrepository.loadModel $1/$2 --script.runScript $1/jarchi-hwo/hwo/$3 -vistaDocumental $4

# /Applications/Archi.app/Contents/MacOS/Archi -application com.archimatetool.commandline.app -consoleLog -nosplash --modelrepository.loadModel $1/$2 --script.runScript $1/jarchi-hwo/hwo/$3 -vistaDocumental $4


/Applications/Archi.app/Contents/MacOS/Archi -application com.archimatetool.commandline.app -consoleLog -nosplash --modelrepository.loadModel $1/$2 --script.runScript $1/jarchi-hwo/hwo/exportSingle-md.ajs -vistaDocumental $4

# /Applications/Archi.app/Contents/MacOS/Archi -application com.archimatetool.commandline.app -consoleLog -nosplash --modelrepository.loadModel $1/$2 --script.runScript $1/jarchi-hwo/hwo/markdownDrivingViews-devdocsCLI.ajs -vistaDocumental $4

/Applications/Archi.app/Contents/MacOS/Archi -application com.archimatetool.commandline.app -consoleLog -nosplash --modelrepository.loadModel $1/$2 --script.runScript $1/jarchi-hwo/hwo/exportSingle-pageCLI.ajs -vistaDocumental $4
