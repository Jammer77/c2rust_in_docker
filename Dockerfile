# Dockerfile for c2rust utility  
# https://github.com/immunant/c2rust

# How to run:
# docker build --pull --rm -f "Dockerfile" -t c2rust:latest "." 
# docker run --rm -it  c2rust:latest 

FROM rust:1.67

WORKDIR /usr/src/workspace/
COPY . .

RUN apt update && apt --yes upgrade
RUN apt install --yes build-essential llvm clang libclang-dev cmake libssl-dev pkg-config python3 git
RUN cargo install c2rust
RUN chmod +x run_rust c2rust_transpile

