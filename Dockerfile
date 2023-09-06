FROM registry.redhat.io/codeready-workspaces/plugin-java11-rhel8:latest
USER jboss

CMD wget -nc $FILE_PATH/$FILE_NAME && unzip -n $FILE_NAME -d $DEST && $DEST/$FILE_FOLDER/bin/add-user.sh -u 'admin' -p 'password' && $DEST/$FILE_FOLDER/bin/standalone.sh -c $CONFIG -Djboss.socket.binding.port-offset=$OFFSET -b 0.0.0.0 -bmanagement 0.0.0.0 



