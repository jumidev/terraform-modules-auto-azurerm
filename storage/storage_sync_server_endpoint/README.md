# azurerm_storage_sync_server_endpoint



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_sync_server_endpoint"   
}
inputs = {
   name = "The name which should be used for this Storage Sync..."   
   # storage_sync_group_id → set in component_inputs
   registered_server_id = "The ID of the Registered Server that will be associate with the Storage Sync Ser..."   
   server_local_path = "The path on the Windows Server to be synced to the Azure file share..."   
}
component_inputs = {
   storage_sync_group_id = "path/to/storage_sync_group_component:id"   
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
| **name** | string |  The name which should be used for this Storage Sync. Changing this forces a new Storage Sync Server Endpoint to be created. | 
| **storage_sync_group_id** | string |  The ID of the Storage Sync Group where the Storage Sync Server Endpoint should exist. Changing this forces a new Storage Sync Server Endpoint to be created. | 
| **registered_server_id** | string |  The ID of the Registered Server that will be associate with the Storage Sync Server Endpoint. Changing this forces a new Storage Sync Server Endpoint to be created. ~> **NOTE:** The target server must already be registered with the parent `azurerm_storage_sync` prior to creating this endpoint. For more information on registering a server see the [Microsoft documentation](https://learn.microsoft.com/azure/storage/file-sync/file-sync-server-registration) | 
| **server_local_path** | string |  The path on the Windows Server to be synced to the Azure file share. Changing this forces a new Storage Sync Server Endpoint to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **cloud_tiering_enabled** | bool |  `False`  |  Is Cloud Tiering Enabled? Defaults to `false`. | 
| **volume_free_space_percent** | string |  `20`  |  What percentage of free space on the volume should be preserved? Defaults to `20`. | 
| **tier_files_older_than_days** | number |  -  |  Files older than the specified age will be tiered to the cloud. | 
| **initial_download_policy** | string |  `NamespaceThenModifiedFiles`  |  Specifies how the server initially downloads the Azure file share data. Valid Values includes `NamespaceThenModifiedFiles`, `NamespaceOnly`, and `AvoidTieredFiles`. Defaults to `NamespaceThenModifiedFiles`. | 
| **local_cache_mode** | string |  `UpdateLocallyCachedFiles`  |  Specifies how to handle the local cache. Valid Values include `UpdateLocallyCachedFiles` and `DownloadNewAndModifiedFiles`. Defaults to `UpdateLocallyCachedFiles`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Sync. | 

Additionally, all variables are provided as outputs.
