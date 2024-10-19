FROM hashicorp/terraform

WORKDIR /app
RUN apk update && apk add bash
RUN touch ~/.bashrc
RUN terraform -install-autocomplete
