# azurerm_storage_sync_cloud_endpoint

Manages a Storage Sync Cloud Endpoint.-> **NOTE:** Please ensure Azure File Sync has access to the storage account in your subscription, which indicates that `Microsoft.StorageSync` is assigned role `Reader and Data Access` ( refer to details [here](https://docs.microsoft.com/azure/storage/files/storage-sync-files-troubleshoot?tabs=portal1%2Cazure-portal#common-troubleshooting-steps)).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_sync_cloud_endpoint"   
}

inputs = {
   name = "name of storage_sync_cloud_endpoint"   
   # storage_sync_group_id → set in tfstate_inputs
   file_share_name = "file_share_name of storage_sync_cloud_endpoint"   
   # storage_account_id → set in tfstate_inputs
}

tfstate_inputs = {
   storage_sync_group_id = "path/to/storage_sync_group_component:id"   
   storage_account_id = "path/to/storage_account_component:id"   
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
| **name** | string |  The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 
| **storage_sync_group_id** | string |  The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 
| **file_share_name** | string |  The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 
| **storage_account_id** | string |  The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **storage_account_tenant_id** | string |  The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Sync Cloud Endpoint. | 

Additionally, all variables are provided as outputs.
