# azurerm_hpc_cache_blob_nfs_target

Manages a Blob NFSv3 Target within a HPC Cache.~> **NOTE:**: By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.~> **NOTE:**: This resource depends on the NFSv3 enabled Storage Account, which has some prerequisites need to meet. Please checkout: <https://docs.microsoft.com/azure/storage/blobs/network-file-system-protocol-support-how-to?tabs=azure-powershell>.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.cache_name** | string | True | -  |  -  | The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created. | 
| **var.namespace_path** | string | True | -  |  -  | The client-facing file path of the HPC Cache Blob NFS Target. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created. | 
| **var.storage_container_id** | string | True | -  |  -  | The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created. | 
| **var.usage_model** | string | True | -  |  `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60`, `WRITE_WORKLOAD_CLOUDWS`  | The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`. | 
| **var.access_policy_name** | string | False | `default`  |  -  | The name of the access policy applied to this target. Defaults to `default`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **cache_name** | string  | - | 
| **name** | string  | - | 
| **namespace_path** | string  | - | 
| **resource_group_name** | string  | - | 
| **storage_container_id** | string  | - | 
| **usage_model** | string  | - | 
| **access_policy_name** | string  | - | 
| **id** | string  | The ID of the HPC Cache Blob NFS Target. | 