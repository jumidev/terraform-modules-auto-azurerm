# azurerm_hpc_cache_nfs_target

Manages a NFS Target within a HPC Cache.~> **NOTE:**: By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/hpc_cache_nfs_target" 
}

inputs = {
   name = "name of hpc_cache_nfs_target" 
   resource_group_name = "${resource_group}" 
   cache_name = "cache_name of hpc_cache_nfs_target" 
   target_host_name = "target_host_name of hpc_cache_nfs_target" 
   usage_model = "usage_model of hpc_cache_nfs_target" 
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
| **var.name** | string  -  |  The name of the HPC Cache NFS Target. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the Resource Group in which to create the HPC Cache NFS Target. Changing this forces a new resource to be created. | 
| **var.cache_name** | string  -  |  The name HPC Cache, which the HPC Cache NFS Target will be added to. Changing this forces a new resource to be created. | 
| **var.target_host_name** | string  -  |  The IP address or fully qualified domain name (FQDN) of the HPC Cache NFS target. Changing this forces a new resource to be created. | 
| **var.usage_model** | string  `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60`, `WRITE_WORKLOAD_CLOUDWS`  |  The type of usage of the HPC Cache NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HPC Cache NFS Target. | 

Additionally, all variables are provided as outputs.
