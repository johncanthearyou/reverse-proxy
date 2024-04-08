podman pull docker.io/library/nginx
podman image build -t jws_nginx .
podman container run --name %1 -d jws_nginx