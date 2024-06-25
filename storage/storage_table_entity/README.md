# azurerm_storage_table_entity



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_table_entity"   
}
inputs = {
   # storage_table_id → set in component_inputs
   partition_key = "The key for the partition where the entity will be inserted/merged..."   
   row_key = "The key for the row where the entity will be inserted/merged..."   
   entity = "A map of key/value pairs that describe the entity to be inserted/merged in to th..."   
}
component_inputs = {
   storage_table_id = "path/to/storage_table_component:id"   
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
| **storage_table_id** | string |  The Storage Share ID in which this file will be placed into. Changing this forces a new resource to be created. | 
| **partition_key** | string |  The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created. | 
| **row_key** | string |  The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created. | 
| **entity** | string |  A map of key/value pairs that describe the entity to be inserted/merged in to the storage table. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **entity** | string | No  | A map of key/value pairs that describe the entity to be inserted/merged in to the storage table. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Entity within the Table in the Storage Account. | 

Additionally, all variables are provided as outputs.
