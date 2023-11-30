# azurerm_ssh_public_key

Manages a SSH Public Key.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/ssh_public_key" 
}

inputs = {
   location = "${location}" 
   name = "name of ssh_public_key" 
   public_key = "public_key of ssh_public_key" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created. | 
| **var.name** | string | True | The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created. | 
| **var.public_key** | string | True | SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the SSH Public Key. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SSH Public Key. | 

Additionally, all variables are provided as outputs.
