# azurerm_logz_sub_account

Manages a logz Sub Account.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this logz Sub Account. Possible values must be between 1 and 32 characters in length and may contain only letters, numbers, hyphens and underscores. Changing this forces a new logz Sub Account to be created. | 
| **var.logz_monitor_id** | string | True | -  |  The ID of the Logz Monitor. Changing this forces a new logz Sub Account to be created. | 
| **var.user** | block | True | -  |  A `user` block. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Whether the resource monitoring is enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the logz Sub Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **logz_monitor_id** | string  | - | 
| **user** | block  | - | 
| **enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the logz Sub Account. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logz/logz_sub_account" 
}

inputs = {
   name = "name of logz_sub_account" 
   logz_monitor_id = "logz_monitor_id of logz_sub_account" 
   user = "user of logz_sub_account" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```