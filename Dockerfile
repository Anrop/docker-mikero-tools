FROM ubuntu

# Install Mikero Tools dependencies
RUN apt-get update && apt-get install liblzo2-2 libvorbis0a libvorbisfile3 libvorbisenc2 libogg0
RUN apt-get clean && apt-get purge

# Install Mikero Tools to system
COPY bin/ /usr/local/bin
COPY lib/ /usr/local/lib
RUN ln -s /usr/local/lib/libdepbo.so.0.5.33 /usr/local/lib/libdepbo.so.0

# Update libraries
RUN ldconfig

# Run makepbo help if no other command specified
CMD makepbo -h
