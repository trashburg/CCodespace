FROM alpine as jumpbox

WORKDIR /home/

COPY . .

RUN apk update && apk add --no-cache zsh curl git clang clang-dev gcc g++ gdb \
                                     libc-dev linux-headers valgrind catch2 &&\
    echo "alias ls='ls --color=auto'" >> /root/.profile &&\
    echo "alias ll='ls -alF'" >> /root/.profile &&\
    echo "alias la='ls -alF'" >> /root/.profile

RUN sh -c  "$(curl -fsSL https://get.docker.com | bash)" &&\
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&\
    cp .zshrc /root &&\
    cp zcommands.sh /root/.oh-my-zsh