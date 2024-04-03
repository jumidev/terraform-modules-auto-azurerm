# azurerm_disk_access



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/disk_access"   
}
inputs = {
   location = "${location}"   
   name = "The name which should be used for this Disk Access"   
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
| **location** | string |  The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created. | 
| **name** | string |  The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Disk Access. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the Disk Access. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Disk Access resource. | 

Additionally, all variables are provided as outputs.
