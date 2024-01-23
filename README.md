# StockTree

StockTree 프로젝트의 베포 설정입니다. 다음의 서비스를 포함합니다:
1. `frontend`: Next.js 프론트엔드입니다.
2. `backend`: Spring Boot 백엔드입니다.
3. `backend-dev`: 백엔드 개발 서버입니다. CORS 등의 환경 변수가 이를 통해 설정됩니다.
4. `caddy`: 리버스 프록시입니다. TLS 인증서 제공, 프론트엔드와 백엔드 연결 등을 위해 이용됩니다.
5. `deploy`: Github Actions를 통한 CI/CD를 구현하기 위해 구성하였습니다.