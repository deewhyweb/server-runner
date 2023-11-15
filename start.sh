

unzip -n $DEST/$FILE_NAME -d $DEST 
$DEST/$FILE_FOLDER/bin/add-user.sh -u 'admin' -p 'password'
echo "/core-service=management/management-interface=http-interface:list-add(name=allowed-origins,value=$HOSTNAME)" > /tmp/cors.cli
echo "embed-server --server-config=$CONFIG --std-out=echo" > /tmp/setup.cli \
    && cat /tmp/cors.cli >> /tmp/setup.cli

$DEST/$FILE_FOLDER/bin/jboss-cli.sh --file=/tmp/setup.cli 
$DEST/$FILE_FOLDER/bin/standalone.sh -c $CONFIG -Djboss.socket.binding.port-offset=$OFFSET -b 0.0.0.0 -bmanagement 0.0.0.0 &
tail -f /dev/null 