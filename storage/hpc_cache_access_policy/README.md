# azurerm_hpc_cache_access_policy

Manages a HPC Cache Access Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/hpc_cache_access_policy" 
}

inputs = {
   name = "name of hpc_cache_access_policy" 
   hpc_cache_id = "hpc_cache_id of hpc_cache_access_policy" 
   access_rule = "access_rule of hpc_cache_access_policy" 
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
| **name** | string |  The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created. | 
| **hpc_cache_id** | string |  The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created. | 
| **access_rule** | list |  One or more `access_rule` blocks (up to three) as defined below. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HPC Cache Access Policy. | 

Additionally, all variables are provided as outputs.
