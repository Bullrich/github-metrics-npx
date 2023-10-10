FROM node:18-alpine

ARG REPO
ARG ORG
ARG TOKEN
ENV REPO=${REPO}
ENV ORG=${ORG}
ENV GITHUB_TOKEN=$TOKEN

RUN echo "TOken is $GITHUB_TOKEN"

CMD [ "sh", "-c", "GITHUB_TOKEN=${GITHUB_TOKEN} npx @figify/gh-metrics --a $ORG --r $REPO" ]
