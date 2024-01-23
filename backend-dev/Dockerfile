# 빌드
FROM openjdk:11-jdk-slim as build

# 필요한 도구 설치
RUN apt-get update && apt-get install git -y
RUN echo "git install"

WORKDIR /app

# 프로젝트 클론하기
RUN git clone -b main https://github.com/ApptiveDev/apptive-19th-hjfund-backend.git /app

# 빌드
RUN chmod +x ./gradlew
RUN ./gradlew build --no-daemon

# 실행
FROM openjdk:11-jre-slim
COPY --from=build /app/build/libs/hjfund-0.0.1-SNAPSHOT.jar /app/app.jar
RUN chmod +x /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]