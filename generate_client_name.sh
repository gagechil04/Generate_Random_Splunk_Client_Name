#!/bin/bash

#Echo a blank new line and then create deployment-client header
echo >> /opt/splunk/etc/system/local/deploymentclient.conf &&
echo "[deployment-client]" >> /opt/splunk/etc/system/local/deploymentclient.conf &&


# Function to generate a random alphanumerical string
generate_random_string() {
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 12
}

# Generate a random string
random_string=$(generate_random_string)

# Specify the path to the existing file
file_path="/opt/splunk/etc/system/local/deploymentclient.conf"

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
