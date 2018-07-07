FROM centos:7
#ARG user
#ARG pass 
LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170705"
RUN yum install -y wget
RUN yum install -y samba samba-client samba-common cifs-utils
RUN chkconfig smb on
RUN chkconfig nmb on
RUN yum install -y openssl
RUN yum install -y curl
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py
RUN yum -y install git
EXPOSE 80 22 443
#RUN echo "env GIT_SSL_NO_VERIFY=true git clone https://$user:$pass@somegitpath/toolbox.git" > /home/prep.sh
RUN echo "GIT_SSL_NO_VERIFY=false  git clone https://github.com/nanoseconds/dockerToolBox.git" > /home/prep.sh
RUN chmod 777 /home/prep.sh
RUN echo "INSTALL NODEJS ---------------------------"
RUN yum install -y epel-release
#nodejs stuff
RUN yum install -y nodejs
RUN npm install jsesc
RUN npm install unescape-js
RUN npm install fs
RUN pip install bcrypt
RUN . /home/prep.sh
RUN yum -y install wget
#sslcan tool
RUN wget -c http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/s/sslscan-1.10.2-3.el7.x86_64.rpm
RUN rpm -i sslscan-1.10.2-3.el7.x86_64.rpm
RUN ln -s /usr/lib/node_modules /dockerToolBox/node_modules
RUN rm -rf /dockerToolBox/docker/
CMD ["/bin/bash"]
