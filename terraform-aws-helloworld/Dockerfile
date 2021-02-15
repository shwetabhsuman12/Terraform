FROM shwetabhsuman/terraform-ubuntu
USER root
RUN apt-get update && \
    apt-get install -y build-essential
WORKDIR src
RUN mkdir terraform-aws-ubuntu
COPY . ./terraform-aws-ubuntu
