#!/bin/bash

#Echo a blank new line and then create the deployment-client header
echo >> /opt/splunkforwarder/etc/system/local/deploymentclient.conf &&
echo "[deployment-client]" >> /opt/splunkforwarder/etc/system/local/deploymentclient.conf &&


# Function to generate a random 12 character alphanumerical string; You can change the number of characters withh the "head -c 12" parameter
generate_random_string() {
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 12
}

# Generate a random string
random_string=$(generate_random_string)

# Specify the path to the existing file
file_path="/opt/splunkforwarder/etc/system/local/deploymentclient.conf"

# Check if the file exists
if [ -f "$file_path" ]; then
    # Append the random string to the existing file
    echo "clientName = AWS-Server$random_string" >> "$file_path"
    # Print a message indicating the completion of the task
    echo "Random string has been appended to $file_path"
else
    # Print an error message if the file does not exist
    echo "Error: File $file_path does not exist."
fi
