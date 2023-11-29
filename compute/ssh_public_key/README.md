# azurerm_ssh_public_key

Manages a SSH Public Key.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created. | 
| **public_key** | string | True | -  |  -  | SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the SSH Public Key. | 

