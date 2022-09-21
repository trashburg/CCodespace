FROM alpine

ARG KEY
ARG PASS

RUN apk update --no-cache && apk add --no-cache \
    sudo zsh starship docker git &&\
    git clone https://github.com/trashburg/dotfiles.git /root

# RUN touch /root/test &&\
#     echo $KEY >> /root/test &&\
#     cat /root/test &&\
#     echo ${OTHER_TEST_VAR}

RUN apk add --no-cache openrc openssh neovim &&\
    echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config &&\
    mkdir /root/.ssh && touch /root/.ssh/authorized_keys &&\
    echo '${KEY}' >> /root/.ssh/authorized_keys &&\
    chmod 700 /root/.ssh/authorized_keys

# RUN echo root:${PASS} | chpasswd &&\
#     echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel &&\
#     echo "Defaults rootpw" >> /etc/sudoers &&\
#     adduser -s /bin/zsh -DH user -G wheel &&\
#     git clone https://github.com/trashburg/dotfiles.git /home/user &&\
#     chown -R user /home/user

COPY ./zcommands.sh /root

# USER users