# Set game
$gameName = "gta5"

#Set server path
$pathRoot = "C:\FXServer"

# Configure server paths
$pathData    = $pathRoot   + "\server-data"
$pathCache   = $pathData   + "\cache"
$pathServer  = $pathRoot   + "\server"
$pathCitizen = $pathServer + "\citizen"
$pathConfig  = $pathData   + "\server.cfg"
$pathExe     = $pathServer + "\FXServer.exe"

# Flush local cache
# $clearLocalCache = "rd /S /Q `"" + $pathFiveMCache + "\cache`""
# cmd.exe /c $clearLocalCache

# Switch directory
$cmd = "cd /d `"" + $pathData + "`""
cmd.exe /c $cmd

# Flush server cache
$cmd = "rd /S /Q `"" + $pathCache + "`""
cmd.exe /c $clearServerCache

# Start the server
$cmd = "`"" + $pathExe + "`" +set gamename=" + $gameName + " +set citizen_dir=`"" + $pathCitizen + "`" +exec `"" + $pathConfig + "`""
cmd.exe /c $cmd
