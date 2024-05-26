FROM cytopia/ansible

COPY ansible /ansible

COPY entrypoint.sh /ansible/entrypoint.sh

WORKDIR /ansible