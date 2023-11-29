# azurerm_storage_queue

Manages a Queue within an Azure Storage Account.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string | True | -  |  -  | Specifies the Storage Account in which the Storage Queue should exist. Changing this forces a new resource to be created. | 
| **var.metadata** | string | False | -  |  -  | A mapping of MetaData which should be assigned to this Storage Queue. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_account_name** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Storage Queue. | 
| **resource_manager_id** | string  | The Resource Manager ID of this Storage Queue. | 