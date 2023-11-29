# azurerm_storage_mover_target_endpoint

Manages a Storage Mover Target Endpoint.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.storage_mover_id** | string | True | -  |  -  | Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | True | -  |  -  | Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.storage_container_name** | string | True | -  |  -  | Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  | Specifies a description for the Storage Mover Target Endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_mover_id** | string  | - | 
| **storage_account_id** | string  | - | 
| **storage_container_name** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Storage Mover Target Endpoint. | 