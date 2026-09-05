TOPLEVEL=$(git rev-parse --show-toplevel)

cd "$TOPLEVEL" || exit 1
if [ -d bin ]; then
    rm -r bin
fi
mkdir -p bin

cd src
zip -r "$TOPLEVEL"/bin/$(basename "$TOPLEVEL")-SNAPSHOT.zip *