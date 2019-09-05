# Build and run this container with a commnad like this below:
# python setup.py sdist && docker build -t foobar:0 . && docker run --rm -ti foobar:0

FROM debian:latest

RUN apt update &&\
    apt install tree -y &&\
    apt install python-pip -y &&\
    apt install sudo &&\
    useradd -ms /bin/bash dizak &&\
    adduser dizak sudo &&\
    echo "dizak:foobar" | chpasswd

COPY ./dist/foobar-0.0.0.tar.gz /home/dizak

WORKDIR /home/dizak

USER dizak

RUN echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc && \
    echo 'export PYTHON_PATH=$HOME/.local' >> $HOME/.bashrc && \
    pip install --user ./foobar-0.0.0.tar.gz

# Uncomment the line below to see how pip complains about ```.local/bin``` not being inside the PATH
#RUN pip install --user ./foobar-0.0.0.tar.gz

CMD bash -i
