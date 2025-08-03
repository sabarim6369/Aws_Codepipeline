#!/bin/bash
cd /home/ec2-user/server

# Kill old process if running on port 3000
fuser -k 3000/tcp || true

# Use pm2 to keep the app alive
npm install -g pm2
pm2 start index.js --name "express-app"
pm2 save
