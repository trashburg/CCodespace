function rebuild() {
    rm -rf $WORKSPACE_FOLDER/build
    mkdir $WORKSPACE_FOLDER/build
    cmake -DCMAKE_BUILD_TYPE=Debug -S $WORKSPACE_FOLDER -B $WORKSPACE_FOLDER/build
    cmake --build $WORKSPACE_FOLDER/build
}

function checkmem() {
    valgrind --tool=memcheck --leak-check=yes --track-origins=yes $WORKSPACE_FOLDER/build/$APP_NAME
}

function runapp() {
    $WORKSPACE_FOLDER/build/$APP_NAME
}

function getDotfiles () {
    git clone https://github.com/trashburg/dotfiles.git
    rm -fr ./git

}