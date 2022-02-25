sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io
 
 
 wget https://vstsagentpackage.azureedge.net/agent/2.200.2/vsts-agent-linux-x64-2.200.2.tar.gz
 mkdir myagent && cd myagent
 tar zxvf ../vsts-agent-linux-x64-2.200.2.tar.gz
