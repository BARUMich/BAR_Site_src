if [ "$1" != "" ]; then
    hugo
    cd public
    git add .
    git commit -m "$1"
    git push origin master
    cd ..
else
    echo "Must supply commit message\n"
    exit 1
fi
