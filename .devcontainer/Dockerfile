FROM alpine

RUN apk update && apk add --no-cache \
    sudo zsh starship docker curl git 
    
    # clang clang-dev make gcc gdb libc-dev linux-headers valgrind 

# RUN echo "root:${PASS}!" | chpasswd

# RUN addgroup -S appgroup && adduser -s /bin/zsh -SH user -G appgroup &&\
#     git clone https://github.com/trashburg/dotfiles.git /home/user

# USER user

# COPY ./.zshrc /root
# COPY ./zcommands.sh /home/user