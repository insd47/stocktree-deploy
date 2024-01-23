# 빌드
FROM openjdk:11-jdk-slim as build

# 필요한 도구 설치
RUN apt-get update && apt-get install git -y
RUN echo "git install"

WORKDIR /app

# 프로젝트 클론하기
RUN git clone -b production https://github.com/ApptiveDev/apptive-19th-hjfund-backend.git /app

# 의존성 다운로드
RUN ./gradlew build --no-daemon

# 소스 코드 복사 및 애플리케이션 빌드
COPY src ./src
RUN ./gradlew build --no-daemon

# 실행
FROM openjdk:11-jre-slim
COPY --from=build /app/build/libs/hjfund-0.0.1-SNAPSHOT.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]