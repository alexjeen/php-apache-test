# PHP and Apache test

Very simple docker container to test a Docker container with PHP:

    docker build . -t apachetest
    
Then:

    docker run -p 8080:80 apachetest    
    
You can then access it through localhost:8080.
