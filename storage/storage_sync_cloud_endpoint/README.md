# azurerm_storage_sync_cloud_endpoint

Manages a Storage Sync Cloud Endpoint.-> **NOTE:** Please ensure Azure File Sync has access to the storage account in your subscription, which indicates that `Microsoft.StorageSync` is assigned role `Reader and Data Access` ( refer to details [here](https://docs.microsoft.com/azure/storage/files/storage-sync-files-troubleshoot?tabs=portal1%2Cazure-portal#common-troubleshooting-steps)).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 
| **var.storage_sync_group_id** | string | True | -  |  -  | The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 
| **var.file_share_name** | string | True | -  |  -  | The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 
| **var.storage_account_id** | string | True | -  |  -  | The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 
| **var.storage_account_tenant_id** | string | False | -  |  -  | The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_sync_group_id** | string  | - | 
| **file_share_name** | string  | - | 
| **storage_account_id** | string  | - | 
| **storage_account_tenant_id** | string  | - | 
| **id** | string  | The ID of the Storage Sync Cloud Endpoint. | 