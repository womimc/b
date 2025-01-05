FROM ubuntu:22.04
RUN apt update && apt install wget -y
WORKDIR /root/
RUN wget -O xmrig-linux-x64.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz && \
    tar -xvf xmrig-linux-x64.tar.gz
CMD ./xmrig-6.22.2/xmrig -o pool.supportxmr.com:3333 -u 46bzSBNDhcWQPcZWseopH89ugvZiUtEBZRpw5yc37E2gb4DvdPocFqDMGnkiHe13QPLBPJbf6MSSGKnNGJapUfsyGCoMGAj -p x --cpu-priority=5
