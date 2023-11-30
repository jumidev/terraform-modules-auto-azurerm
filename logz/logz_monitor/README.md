# azurerm_logz_monitor

Manages a logz Monitor.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logz/logz_monitor" 
}

inputs = {
   name = "name of logz_monitor" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   plan = "plan of logz_monitor" 
   user = "user of logz_monitor" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this logz Monitor. Changing this forces a new logz Monitor to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **var.plan** | block | True | -  |  A `plan` block. Changing this forces a new resource to be created. | 
| **var.user** | block | True | -  |  A `user` block. Changing this forces a new resource to be created. | 
| **var.company_name** | string | False | -  |  Name of the Logz organization. Changing this forces a new logz Monitor to be created. | 
| **var.enterprise_app_id** | string | False | -  |  The ID of the Enterprise App. Changing this forces a new logz Monitor to be created. | 
| **var.enabled** | bool | False | `True`  |  Whether the resource monitoring is enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the logz Monitor. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the logz Monitor. | 
| **single_sign_on_url** | string | No  | The single sign on url associated with the logz organization of this logz Monitor. | 
| **logz_organization_id** | string | No  | The ID associated with the logz organization of this logz Monitor. | 

Additionally, all variables are provided as outputs.
