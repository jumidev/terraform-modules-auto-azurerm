# azurerm_hpc_cache_access_policy

Manages a HPC Cache Access Policy.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created. | 
| **var.hpc_cache_id** | string | True | -  |  -  | The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created. | 
| **var.access_rule** | list | True | -  |  -  | One or more `access_rule` blocks (up to three) as defined below. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **hpc_cache_id** | string  | - | 
| **access_rule** | list  | - | 
| **id** | string  | The ID of the HPC Cache Access Policy. | 