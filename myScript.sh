#installing java version
yum install java-1.8.0-openjdk.x86_64 -y
#downloading jenkins from site
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#installing jenkins
yum install jenkins -y
#start jenkins
systemctl start jenkins
#enable jenkins
systemctl enable jenkins
chkconfig jenkins on
#checking status
service jenkins status