# azurerm_logz_monitor

Manages a logz Monitor.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this logz Monitor. Changing this forces a new logz Monitor to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the logz Monitor should exist. Changing this forces a new logz Monitor to be created. | 
| **var.plan** | block | True | -  |  -  | A `plan` block. Changing this forces a new resource to be created. | 
| **var.user** | block | True | -  |  -  | A `user` block. Changing this forces a new resource to be created. | 
| **var.company_name** | string | False | -  |  -  | Name of the Logz organization. Changing this forces a new logz Monitor to be created. | 
| **var.enterprise_app_id** | string | False | -  |  -  | The ID of the Enterprise App. Changing this forces a new logz Monitor to be created. | 
| **var.enabled** | bool | False | `True`  |  -  | Whether the resource monitoring is enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the logz Monitor. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **plan** | block  | - | 
| **user** | block  | - | 
| **company_name** | string  | - | 
| **enterprise_app_id** | string  | - | 
| **enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the logz Monitor. | 
| **single_sign_on_url** | string  | The single sign on url associated with the logz organization of this logz Monitor. | 
| **logz_organization_id** | string  | The ID associated with the logz organization of this logz Monitor. | 