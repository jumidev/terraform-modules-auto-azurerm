# azurerm_storage_mover_target_endpoint

Manages a Storage Mover Target Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage_mover/storage_mover_target_endpoint"   
}

inputs = {
   name = "name of storage_mover_target_endpoint"   
   # storage_mover_id → set in tfstate_inputs
   # storage_account_id → set in tfstate_inputs
   # storage_container_name → set in tfstate_inputs
}

tfstate_inputs = {
   storage_mover_id = "path/to/storage_mover_component:id"   
   storage_account_id = "path/to/storage_account_component:id"   
   storage_container_name = "path/to/storage_container_component:name"   
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
| **name** | string |  Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **storage_mover_id** | string |  Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **storage_container_name** | string |  Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Specifies a description for the Storage Mover Target Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Target Endpoint. | 

Additionally, all variables are provided as outputs.
