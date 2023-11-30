# azurerm_disk_access

Manages a Disk Access.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/disk_access" 
}

inputs = {
   location = "${location}" 
   name = "name of disk_access" 
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
| **var.location** | string |  The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created. | 
| **var.name** | string |  The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags which should be assigned to the Disk Access. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Disk Access resource. | 

Additionally, all variables are provided as outputs.
