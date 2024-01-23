FROM node:20

# git 설치
RUN apt-get update && apt-get install git -y
RUN echo "git install"

WORKDIR /app

# 프로젝트 클론하기
RUN git clone https://github.com/ApptiveDev/apptive-19th-hjfund-frontend.git /app

# 의존성 파일 복사
COPY package.json yarn.lock ./

# 의존성 설치
RUN yarn install

# 소스 코드 복사 및 빌드
COPY . .
RUN yarn build

# 실행 명령
CMD ["yarn", "start"]
