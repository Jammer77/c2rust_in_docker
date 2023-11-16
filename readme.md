Template for converting from C99 to Rust using c2rust tool inside docker container

How it works: 
    
    Create and run docker container from Dockerfile:
      `docker build --pull --rm -f "Dockerfile" -t c2rust:latest "."` 
      `docker run --rm -v .:/usr/src/out -it c2rust:latest`
   
    And now, when you in intaractive shell of docker container:
      `./c2rust_transpile`
      `./run_rust`

For converting your project you need replace my "hello world" application to your application.
    
