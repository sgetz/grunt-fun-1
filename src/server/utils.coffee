# recursively walk modules path and callback for each file
fs = require("fs")
path = require("path")
baseRgx = /(.*).(js|coffee)$/
walk = (wpath, type, excludeDir, callback) ->

  # slice type
  stype = (if type.slice(-1) is "s" then type.slice(0, -1) else type)
  rgx = new RegExp("(.*)-" + stype + ".(js|coffee)$", "i")
  return  unless fs.existsSync(wpath)
  fs.readdirSync(wpath).forEach (file) ->
    newPath = path.join(wpath, file)
    stat = fs.statSync(newPath)
    if stat.isFile() and (rgx.test(file) or (baseRgx.test(file)) and ~newPath.indexOf(type))

      # if (!rgx.test(file)) console.log('  Consider updating filename:', newPath);
      callback newPath
    else walk newPath, type, excludeDir, callback  if stat.isDirectory() and file isnt excludeDir and ~newPath.indexOf(type)
    return

  return

exports.walk = walk