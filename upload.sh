# Provide AppCenter/Test upload command & path to IPA.
AppCenter_Test_Command='appcenter test run xcuitest --app "Microsoft-Internal/TestiOSAppCenter" --devices 7374bf41 --test-series "master" --locale "en_US" --build-dir pathToXCUItestBuildFolder'
build_dir_path='./TestiOSAppCenterUITests/'

# Run using the command "sh upload.sh"

AppCenter_Test_Command=${AppCenter_Test_Command/'pathToXCUItestBuildFolder'/$build_dir_path}
echo $AppCenter_Test_Command
echo $PWD
eval $AppCenter_Test_Command
