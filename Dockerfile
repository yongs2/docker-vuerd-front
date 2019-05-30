FROM node:latest
MAINTAINER yongs2 yongs2@hotmail.com

USER root
ARG APP_DIR=/app

# 디렉토리 생성 및 패키지 설치
RUN mkdir -p ${APP_DIR} \
	&& cd ${APP_DIR} \
	&& git clone https://github.com/vuerd/vuerd-front \
	&& cd ${APP_DIR}/vuerd-front \
	&& rm -f yarn.lock \
	&& yarn install 

# WORKDIR 로 설정
WORKDIR ${APP_DIR}/vuerd-front

#가상 머신에 오픈할 포트
EXPOSE 8080

#컨테이너에서 실행될 명령을 지정
CMD ["yarn", "serve"]
