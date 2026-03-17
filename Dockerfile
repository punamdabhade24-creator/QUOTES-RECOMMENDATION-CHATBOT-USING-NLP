FROM rasa/rasa:3.6.2

WORKDIR /app

COPY . /app

ENTRYPOINT []

CMD bash -c "rasa train && rasa run --enable-api --cors '*' --port 5005 & python3 -m http.server 10000 --directory frontend"
