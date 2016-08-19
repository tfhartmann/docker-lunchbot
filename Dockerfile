FROM node
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>

RUN git clone https://github.com/jstruzik/boston-food-truck-slack-bot.git /opt/bot
WORKDIR /opt/bot
RUN npm install
env SLACK_URL https://slack_webhook_url_goes_here
CMD npm start
