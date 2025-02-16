#!/bin/bash

# Load global configurations
source config.env

# Deploy Function
deploy_project() {
  source "projects/$1.conf"

  echo "#####################################################################################"
  echo "############### Deploying $PROJECT_NAME - Workspace - $VERSION ######################"
  echo "#####################################################################################"

  JAR_FILE="${JAR_NAME}-${VERSION}.jar"

  # Copy the JAR to the remote server
  scp -i "$PEM_FILE_PATH" "$LOCAL_BUILD_PATH/$JAR_FILE" "$SSH_USER@$SERVER_IP:$TEMP_DIR/"

  # SSH into the server and perform the deployment steps
  ssh -i "$PEM_FILE_PATH" "$SSH_USER@$SERVER_IP" << EOF
    sudo su - pt001
    # cd $BACKUP_DIR && rm -rf *
    mv $DEPLOY_DIR/${JAR_NAME}.jar $BACKUP_DIR/${JAR_NAME}-$(date +%Y%m%d%H%M%S).jar
    cp $TEMP_DIR/$JAR_FILE $DEPLOY_DIR/${JAR_NAME}.jar
    cd $DEPLOY_DIR && ./restart.sh
EOF

  echo "Deployment of $PROJECT_NAME completed!"
}

