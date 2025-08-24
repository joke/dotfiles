FROM alpine
RUN apk --no-cache add git chezmoi curl ncurses openssh vim bash zsh
RUN addgroup joke
RUN adduser -D joke -G joke -h /home/joke
USER joke
WORKDIR /home/joke
ADD run /home/joke/run
