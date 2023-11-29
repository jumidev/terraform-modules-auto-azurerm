# azurerm_hpc_cache_blob_target

Manages a Blob Target within a HPC Cache.~> **NOTE:**: By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.cache_name** | string | True | -  |  -  | The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  | The name of the HPC Cache Blob Target. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created. | 
| **var.namespace_path** | string | True | -  |  -  | The client-facing file path of the HPC Cache Blob Target. | 
| **var.storage_container_id** | string | True | -  |  -  | The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created. | 
| **var.access_policy_name** | string | False | `default`  |  -  | The name of the access policy applied to this target. Defaults to `default`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **cache_name** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **namespace_path** | string  | - | 
| **storage_container_id** | string  | - | 
| **access_policy_name** | string  | - | 
| **id** | string  | The ID of the HPC Cache Blob Target. | 