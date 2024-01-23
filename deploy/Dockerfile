FROM ubuntu:20.04

# 필요한 도구 설치
RUN apt-get update && apt-get install -y curl tar git

# docker 설치
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

WORKDIR /app

# Actions Runner 다운로드 및 설치
RUN curl -o actions-runner-linux-x64-2.311.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-linux-x64-2.311.0.tar.gz
RUN echo "29fc8cf2dab4c195bb147384e7e2c94cfd4d4022c793b346a6175435265aa278  actions-runner-linux-x64-2.311.0.tar.gz" | shasum -a 256 -c
RUN tar xzf ./actions-runner-linux-x64-2.311.0.tar.gz

# 프론트엔드 및 백엔드 러너 디렉토리 생성
RUN mkdir frontend backend

# 실행 스크립트 복사
COPY run.sh run.sh

# 실행 권한 부여
RUN chmod +x run.sh

# 실행
CMD ["./run.sh"]