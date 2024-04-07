podman image build -t jws-nginx .
podman container run --name %1 -d jws-nginx