* Cross compile rust to linux on Apple Silicon
1. Add _Dockerfile_ and _rustbuild.sh_ to project
2. Run docker build -t dkr .
3. Run docker run -v $PWD:/usr/src/dkr --rm --name dkr dkr 
This will create a musl and a glibc release in the target directory.
Replace _dkr_ with names appropriate for the use case.