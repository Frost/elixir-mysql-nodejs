FROM timefairy/docker-asdf-elixir:1.4.1

USER root
RUN apt-get update && apt-get install -y mysql-client

RUN gpg --keyserver pool.sks-keyservers.net --recv-keys 94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \ 
                                                        FD3A5288F042B6850C66B31F09FE44734EB7990E \ 
                                                        71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \ 
                                                        DD8F2338BAE7501E3DD5AC78C273792F7D83545D \ 
                                                        C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \ 
                                                        B9AE9905FFD7803F25714661B63B535A4C206CA9 \ 
                                                        56730D5401028683275BD23C23EFEFE93C4CFFFE

USER asdf
