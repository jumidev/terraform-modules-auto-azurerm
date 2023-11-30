# azurerm_storage_mover

Manages a Storage Mover.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created. | 
| **var.description** | string | False | A description for the Storage Mover. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Storage Mover. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Storage Mover. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage_mover/storage_mover" 
}

inputs = {
   name = "name of storage_mover" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```