# Jenkins Upgrade Script

This repository contains a bash script to safely upgrade Jenkins to the latest version by backing up the Jenkins home directory, downloading the latest Jenkins WAR file, and restarting the Jenkins service.

## Prerequisites

- Ensure you have sudo privileges to stop and start the Jenkins service and to replace the WAR file.
- Ensure `zip` and `wget` are installed on your system.

## Script Details

- The script backs up the Jenkins home directory located at `/var/lib/jenkins`.
- It downloads the latest Jenkins WAR file from the official Jenkins website.
- It replaces the old WAR file with the new one.
- It restarts the Jenkins service to apply the changes.

## Usage

1. **Clone the repository**:
    ```sh
    git clone https://github.com/NashTech-Labs/upgrade_jenkins.git
    cd jenkins-upgrade-script
    ```

2. **Make the script executable**:
    ```sh
    chmod +x upgrade_jenkins.sh
    ```

3. **Run the script**:
    ```sh
    sudo ./upgrade_jenkins.sh
    ```
