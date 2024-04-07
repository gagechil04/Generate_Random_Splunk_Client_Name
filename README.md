# Generate Random Splunk Client Name

<br />

An example usecase for this script would be if you have any machines with dynamic IPs/hostnames which makes it difficult when creating serverclass whitelists. If these IPs/hostnames change then you would need to constantly update the serverclass whitelists in order to keep up. Here we can generate a random string, append it to a static prefix, and output the result into `deploymentclient.conf`.<br />

Currently the script utilizes a `Prefix` named **"AWS-Server"**, it will generate a randon 12 digit alphanumerical string and append it to the prefix. This ensures we do not duplicate any `client names` and if we decide we need multiple groups that have dynamic IPs/hostnames you can modify the prefix for each group.<br />

<br /><br />

### deploymentclient.conf before running the script
![Alt text](https://github.com/gagechil04/Generate_Random_Splunk_Client_Name/blob/main/Resources/before.jpg "Before Running Script")

<br />

### deploymentclient.conf after running the script
![Alt text](https://github.com/gagechil04/Generate_Random_Splunk_Client_Name/blob/main/Resources/after.jpg "After Running Script")

<br />

### Modify The Prefix String
If you would like to modify or create a new group of servers with a different prefix, you can modify line `22` - In my example I am using the prefix "AWS-Server"
![Alt text](https://github.com/gagechil04/Generate_Random_Splunk_Client_Name/blob/main/Resources/prefix_string.jpg "String Prefix")
