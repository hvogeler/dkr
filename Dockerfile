#FROM rust:latest as builder
FROM --platform=amd64 rust:1.75
WORKDIR /usr/src/dkr
# COPY . .
RUN rustup target add x86_64-unknown-linux-musl
# RUN cargo build --release --target=x86_64-unknown-linux-musl
# RUN cargo build --release
# CMD [ "cargo", "build", "--release", "--target=x86_64-unknown-linux-musl" ]
CMD [ "./rustbuild.sh"]

# docker build -t dkr .   
# docker run -v $PWD/dkrtarget:/usr/src/dkr/target --rm --name dkr dkr 
# docker run -v $PWD:/usr/src/dkr --rm --name dkr dkr 

# manual build:
# docker run -it -v $PWD/dkrtarget:/usr/src/dkr/target --rm --name dkr dkr /bin/bash
