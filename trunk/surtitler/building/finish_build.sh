# ----------------------------------------------------------------------------------------------------
# configure paths
APP_DIR=Surtitler.app/Contents/
MAX_DIR="/Applications/Max 6.1/Cycling '74/"

# ----------------------------------------------------------------------------------------------------
#automatic paths
RES_DIR=$APP_DIR"Resources/"
SHADER_DIR=$RES_DIR"shaders/"

echo --------------------- Finishing Build --------------------


# jit.openexr.mxo is needed by jit.net.send
cp -R /Applications/Max5/Cycling\ \'74/jitter-externals/jit.openexr.mxo $RES_DIR
cp -R /Applications/Max5/Cycling\ \'74/jitter-externals/Cg.framework $APP_DIR"Frameworks"

# java classes and max.jar is needed by mxj
cp /Applications/Max5/Cycling\ \'74/java/lib/max.jar $RES_DIR
cp /Applications/Max5/Cycling\ \'74/java/lib/jitter.jar $RES_DIR
cp -R /Applications/Max5/Cycling\ \'74/java/classes $APP_DIR

# ICON And Plist-----------------------------------------------------------------------------------------------
#cp vb.icon.icns $RES_DIR
#cp Info.plist $APP_DIR

#echo --------------------- Udpdating version --------------------
#perl update_version.pl



