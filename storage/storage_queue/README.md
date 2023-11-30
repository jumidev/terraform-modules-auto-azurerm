# azurerm_storage_queue

Manages a Queue within an Azure Storage Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_queue" 
}

inputs = {
   name = "name of storage_queue" 
   storage_account_name = "storage_account_name of storage_queue" 
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
| **var.name** | string |  The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string |  Specifies the Storage Account in which the Storage Queue should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.metadata** | string |  A mapping of MetaData which should be assigned to this Storage Queue. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Queue. | 
| **resource_manager_id** | string | No  | The Resource Manager ID of this Storage Queue. | 

Additionally, all variables are provided as outputs.
