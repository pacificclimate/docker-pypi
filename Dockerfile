FROM centos
MAINTAINER Matthew Benstead <matthewb@uvic.ca>

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && yum install -y python-pip python-passlib && pip install -U pypiserver && mkdir -p /srv/pypi

EXPOSE 80
VOLUME ["/srv/pypi"]

COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
