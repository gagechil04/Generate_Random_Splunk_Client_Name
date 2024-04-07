# Generate Random Splunk Client Name

<br />

An example usecase for this script would be if you have any machines with dynamic IPs/hostnames which make it difficult when creating serverclass whitelists. If these IPs/hostnames change then you would need to constantly update the serverclass whitelists in order to keep up. Here we can generate a random string, append it to a static prefix, and output the result into `deploymentclient.conf`.<br />

Currently the script utilizes a `Prefix` named **"AWS-Server"**, it will generate a randon alphanumerical string and append it to the prefix. This ensures we do not duplicate any `client names` and if we decide we need multiple groups that have dynamic IPs/hostnames you can modify the prefix for each group.<br />
