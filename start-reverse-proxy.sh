if [[ "$1" == "" ]]
then
    echo "ERROR! Pleae provide a name for the new container to run"
    exit 1
fi

cat << EOF > ./Containerfile
FROM docker.io/library/nginx
COPY nginx.conf /etc/nginx/nginx.conf
EOF

podman pull docker.io/library/nginx
podman image build -t jws_nginx .
podman container run --name $1 -d jws_nginx