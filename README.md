# Setup Jenkins server in azure

## Overview 
- Setup Jenkins server in azure Virtual Machine using Terraform as IaC to setup the virtual machine and it's network configuration and Ansible to setup the Jenkins server in the virtual by Installing the required dependencies and install Jenkins and write the output in Initial Password of Jenkins server

## Running Instructions

### Prerequisites

- Ensure that you have Ansible and Terraform installed on your system.
- Have an Azure account and sufficient permissions to create resources (VM, network, etc.).

### Steps to get started

1. export the required environments:

    Before running the script, you'll need to set some environment variables for authentication and configuration.

```bash
export ARM_CLIENT_ID=""
export ARM_CLIENT_SECRET=""
export ARM_TENANT_ID=""
export ARM_SUBSCRIPTION_ID=""
export TF_VAR_ssh_public_key_file=""
export ssh_private_key_file=""
```

- ARM_CLIENT_ID: Your Azure Active Directory (AAD) application client ID.

- ARM_CLIENT_SECRET: Your Azure Active Directory (AAD) application secret.

- ARM_TENANT_ID: The Azure Active Directory tenant ID.

- ARM_SUBSCRIPTION_ID: Your Azure subscription ID.

- TF_VAR_ssh_public_key_file: Path to your SSH public key, used for VM authentication.

- ssh_private_key_file: Path to your SSH private key, needed for Ansible to connect to the VM.

> Note: Replace the placeholders <...> with your actual values.

2. Run the script the repository's root:

    Navigate to the repository's root directory and run the provided script.sh to initiate the Terraform and Ansible automation.
```bash
bash script.sh
```

3. You can access to the Jenkis server using the Initial password using the VM instance public Ip address for example `http://13.93.108.190:8080`