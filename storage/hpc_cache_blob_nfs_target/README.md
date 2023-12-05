# azurerm_hpc_cache_blob_nfs_target

Manages a Blob NFSv3 Target within a HPC Cache.~> **NOTE:**: By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.~> **NOTE:**: This resource depends on the NFSv3 enabled Storage Account, which has some prerequisites need to meet. Please checkout: <https://docs.microsoft.com/azure/storage/blobs/network-file-system-protocol-support-how-to?tabs=azure-powershell>.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/hpc_cache_blob_nfs_target"   
}

inputs = {
   cache_name = "The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to..."   
   name = "The name which should be used for this HPC Cache Blob NFS Target..."   
   namespace_path = "The client-facing file path of the HPC Cache Blob NFS Target..."   
   resource_group_name = "${resource_group}"   
   # storage_container_id → set in tfstate_inputs
   usage_model = "The type of usage of the HPC Cache Blob NFS Target"   
}

tfstate_inputs = {
   storage_container_id = "path/to/storage_container_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **cache_name** | string |  -  |  The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created. | 
| **name** | string |  -  |  The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created. | 
| **namespace_path** | string |  -  |  The client-facing file path of the HPC Cache Blob NFS Target. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created. | 
| **storage_container_id** | string |  -  |  The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created. | 
| **usage_model** | string |  `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60`, `WRITE_WORKLOAD_CLOUDWS`  |  The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **access_policy_name** | string |  `default`  |  The name of the access policy applied to this target. Defaults to `default`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HPC Cache Blob NFS Target. | 

Additionally, all variables are provided as outputs.
