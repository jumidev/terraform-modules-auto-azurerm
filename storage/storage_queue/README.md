# azurerm_storage_queue

Manages a Queue within an Azure Storage Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_queue"   
}

inputs = {
   name = "The name of the Queue which should be created within the Storage Account..."   
   # storage_account_name → set in component_inputs
}

component_inputs = {
   storage_account_name = "path/to/storage_account_component:name"   
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
| **name** | string |  The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created. | 
| **storage_account_name** | string |  Specifies the Storage Account in which the Storage Queue should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  A mapping of MetaData which should be assigned to this Storage Queue. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **metadata** | string | No  | A mapping of MetaData which should be assigned to this Storage Queue. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Storage Queue. | 
| **resource_manager_id** | string | No  | The Resource Manager ID of this Storage Queue. | 

Additionally, all variables are provided as outputs.
