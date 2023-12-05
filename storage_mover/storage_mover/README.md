# azurerm_storage_mover

Manages a Storage Mover.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created. | 
| **location** | string |  Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for the Storage Mover. | 
| **tags** | map |  A mapping of tags which should be assigned to the Storage Mover. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover. | 

Additionally, all variables are provided as outputs.
