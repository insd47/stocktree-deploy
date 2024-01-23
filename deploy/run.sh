#!/bin/bash

# 프론트엔드 러너 구성
cd frontend
../config.sh --url https://github.com/ApptiveDev/apptive-19th-hjfund-frontend --token ${FRONTEND_ACTION_RUNNER_TOKEN}
cd ..

# 백엔드 러너 구성
cd backend
../config.sh --url https://github.com/ApptiveDev/apptive-19th-hjfund-backend --token ${BACKEND_ACTION_RUNNER_TOKEN}
cd ..

# 두 러너 실행
./frontend/run.sh &
./backend/run.sh &

wait