# Install HashiCorp Ubuntu Repo

This task will guide you through installing the HashiCorp Ubuntu repo to allow you install any of the HashiCrop applications including Packer. 

## Add the GPG Key

APT uses GPG keys to verify the authenticity and integrity of packages. Repository maintainers sign the repository metadata with their private key, and APT checks this signature against the public key on the user's system. If the signatures match, APT proceeds with fetching and installing packages, ensuring they are untampered.

```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
```{{exec}}

## Install the apt repo

We install an APT repository to add a new source of software packages, allowing us to install and update software provided by that repository which might not be available in the default system repositories.

```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```{{exec}}

## Update the apt repo

After adding a new APT repository, it's essential to execute `apt update` to synchronize your package index with the latest changes from the repository.

```
sudo apt update
```{{exec}}
