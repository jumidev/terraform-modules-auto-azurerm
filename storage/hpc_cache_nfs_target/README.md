# azurerm_hpc_cache_nfs_target



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/hpc_cache_nfs_target"   
}
inputs = {
   name = "The name of the HPC Cache NFS Target"   
   resource_group_name = "${resource_group}"   
   cache_name = "The name HPC Cache, which the HPC Cache NFS Target will be added to..."   
   target_host_name = "The IP address or fully qualified domain name (FQDN) of the HPC Cache NFS target..."   
   usage_model = "The type of usage of the HPC Cache NFS Target"   
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
| **name** | string |  -  |  The name of the HPC Cache NFS Target. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which to create the HPC Cache NFS Target. Changing this forces a new resource to be created. | 
| **cache_name** | string |  -  |  The name HPC Cache, which the HPC Cache NFS Target will be added to. Changing this forces a new resource to be created. | 
| **target_host_name** | string |  -  |  The IP address or fully qualified domain name (FQDN) of the HPC Cache NFS target. Changing this forces a new resource to be created. | 
| **usage_model** | string |  `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60`, `WRITE_WORKLOAD_CLOUDWS`  |  The type of usage of the HPC Cache NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **access_policy_name** | string | No  | The name of the access policy applied to this target. Defaults to `default`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the HPC Cache NFS Target. | 

Additionally, all variables are provided as outputs.
