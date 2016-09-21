PROJECT_NAME = 'ScaryBugs'
TEST_TARGET = 'ScaryBugsTests'
SCHEME_FILE = 'ScaryBugsTests.xcscheme'

target TEST_TARGET do
    project PROJECT_NAME
    inherit! :search_paths
    pod 'EarlGrey'
end

post_install do |installer|
    require 'earlgrey'
    configure_for_earlgrey(installer, PROJECT_NAME, TEST_TARGET, SCHEME_FILE)
end