FROM node
MAINTAINER Tim Hartmann <tfhartmann@gmail.com>

#RUN git clone https://github.com/jstruzik/boston-food-truck-slack-bot.git /opt/bot
RUN git clone https://github.com/tfhartmann/boston-food-truck-slack-bot.git /opt/bot
WORKDIR /opt/bot
RUN git checkout -b tfhartmann/pass-job-time-as-var origin/tfhartmann/pass-job-time-as-var
RUN npm install
env SLACK_URL https://slack_webhook_url_goes_here
env JOB_TIME='06 20 * * 1-5'
CMD npm start
