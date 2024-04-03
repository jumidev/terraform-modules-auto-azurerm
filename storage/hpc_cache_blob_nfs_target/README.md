# azurerm_hpc_cache_blob_nfs_target



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
   # storage_container_id → set in component_inputs
   usage_model = "The type of usage of the HPC Cache Blob NFS Target"   
}
component_inputs = {
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
| **storage_container_id** | string |  -  |  The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created. -> **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azurerm_storage_container` Data Source/Resource as `resource_manager_id`. | 
| **usage_model** | string |  `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60`, `WRITE_WORKLOAD_CLOUDWS`  |  The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **verification_timer_in_seconds** | number |  -  |  `1`, `31536000`  |  The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`. | 
| **write_back_timer_in_seconds** | number |  -  |  `1`, `31536000`  |  The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`. | 
| **access_policy_name** | string |  `default`  |  -  |  The name of the access policy applied to this target. Defaults to `default`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **access_policy_name** | string | No  | The name of the access policy applied to this target. Defaults to `default`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the HPC Cache Blob NFS Target. | 

Additionally, all variables are provided as outputs.
