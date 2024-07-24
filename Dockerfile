FROM hashicorp/terraform

WORKDIR /app
RUN apk update && apk add bash
RUN echo 'terraform -install-autocomplete' >> ~/.bashrc
