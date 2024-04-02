# azurerm_hpc_cache_access_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/hpc_cache_access_policy"   
}

inputs = {
   name = "The name which should be used for this HPC Cache Access Policy..."   
   # hpc_cache_id → set in component_inputs
   access_rule = "One or more `access_rule` blocks (up to three) as defined below..."   
}

component_inputs = {
   hpc_cache_id = "path/to/hpc_cache_component:id"   
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
| **access_rule** | string |  One or more `access_rule` blocks (up to three) as defined below. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **anonymous_gid** | string | No  | The anonymous GID used when `root_squash_enabled` is `true`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the HPC Cache Access Policy. | 

Additionally, all variables are provided as outputs.
