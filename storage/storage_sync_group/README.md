# azurerm_storage_sync_group

Manages a Storage Sync Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_sync_group"   
}

inputs = {
   name = "The name which should be used for this Storage Sync Group..."   
   # storage_sync_id → set in tfstate_inputs
}

tfstate_inputs = {
   storage_sync_id = "path/to/storage_sync_component:id"   
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
| **name** | string |  The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created. | 
| **storage_sync_id** | string |  The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Sync Group. | 

Additionally, all variables are provided as outputs.
