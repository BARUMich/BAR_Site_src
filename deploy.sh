if [ "$1" != "" ]; then
    # building the site into /public
    hugo
    
    # committing and pushing work to src repo
    git add .
    git commit -m "$1"
    git push origin master

    # committing and pushing work to hosted site repo
    cd public
    rm .gitignore
    git add .
    git commit -m "$1"
    git push origin master
    cd ..
else
    echo "Must supply commit message\n"
    exit 1
fi
