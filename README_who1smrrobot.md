# DetectionLab ELK

*Disclaimer: Currently works only for ESXi environment.*

Modifications:

* modified:   ESXi/Packer/ubuntu1804_esxi.json
* modified:   ESXi/Packer/windows_10_esxi.json
* modified:   ESXi/Packer/windows_2016_esxi.json
* modified:   Vagrant/Vagrantfile
* modified:   Vagrant/logger_bootstrap.sh
added:      Vagrant/scripts/install-winlogbeat.ps1

* modified:   ESXi/ansible/detectionlab.yml
* modified:   ESXi/ansible/inventory.yml
* modified:   ESXi/ansible/roles/dc/tasks/main.yml
* modified:   ESXi/ansible/roles/exchange/tasks/main.yml
* modified:   ESXi/ansible/roles/wef/tasks/main.yml
* modified:   ESXi/ansible/roles/win10/tasks/main.yml
* modified:   ESXi/main.tf

https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html

# Installation


### Packer
Modify `DetectionLab/ESXi/Packer/variables.json`

*Note: `http_server_address` is client of which packer command is executed and must be reachable by created virtual machines!*

```json
{
    "esxi_host": "server1.s3curity.eu",
    "esxi_datastore": "datastore2",
    "esxi_username": "root",
    "esxi_password": "FIXME",
    "esxi_network_with_dhcp_and_internet": "Lab",
    "http_server_address": "192.168.2.100"
}
```

`$env:PACKER_CACHE_DIR="../../Packer/packer_cache"; packer build -var-file variables.json windows_10_esxi.json`
`$env:PACKER_CACHE_DIR="../../Packer/packer_cache";  packer build -var-file variables.json windows_2016_esxi.json`
`$env:PACKER_CACHE_DIR="../../Packer/packer_cache";  packer build -var-file variables.json ubuntu1804_esxi.json`

### Terraform

Modify `DetectionLab\ESXi\terraform.tfvars`

```yml
esxi_hostname="server1.s3curity.eu"
esxi_username="root"
esxi_password="FIXME"
esxi_datastore="datastore2"
vm_network="Lab"
hostonly_network="CTFLab"
www_network="CTFLab_WWW"
```

`terraform init`
`terraform apply`

### Ansible

