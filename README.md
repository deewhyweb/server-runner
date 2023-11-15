podman run  -e FILE_NAME=jboss-eap-7.4.0.zip -e FILE_FOLDER=jboss-eap-7.4  -e DEST=/home/jboss -e OFFSET=100 -e CONFIG=standalone.xml -e HOSTNAME=https://example.com -p 10090:10090 -p 8180:8180 server-runner

podman build -t quay.io/hayesphilip/run-server .

podman push quay.io/hayesphilip/run-server