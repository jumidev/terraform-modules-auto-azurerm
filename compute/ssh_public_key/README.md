# azurerm_ssh_public_key



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/ssh_public_key"   
}
inputs = {
   location = "${location}"   
   name = "The name which should be used for this SSH Public Key..."   
   public_key = "SSH public key used to authenticate to a virtual machine through ssh..."   
   resource_group_name = "${resource_group}"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **location** | string |  The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created. | 
| **name** | string |  The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created. | 
| **public_key** | string |  SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format. | 
| **resource_group_name** | string |  The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the SSH Public Key. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the SSH Public Key. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SSH Public Key. | 

Additionally, all variables are provided as outputs.
