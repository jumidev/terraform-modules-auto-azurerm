# azurerm_storage_share_directory



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_share_directory"   
}
inputs = {
   name = "The name (or path) of the Directory that should be created within this File Shar..."   
   # storage_share_id → set in component_inputs
}
component_inputs = {
   storage_share_id = "path/to/storage_share_component:id"   
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
| **name** | string |  The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created. | 
| **storage_share_id** | string |  The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  A mapping of metadata to assign to this Directory. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **metadata** | string | No  | A mapping of metadata to assign to this Directory. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Directory within the File Share. | 

Additionally, all variables are provided as outputs.
