# azurerm_monitor_autoscale_setting

Manages a AutoScale Setting which can be applied to Virtual Machine Scale Sets, App Services and other scalable resources.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the AutoScale Setting. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created. | 
| **var.profile** | block | True | -  |  Specifies one or more (up to 20) `profile` blocks. | 
| **var.target_resource_id** | string | True | -  |  Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`. | 
| **var.notification** | block | False | -  |  Specifies a `notification` block. | 
| **var.predictive** | block | False | -  |  A `predictive` block. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **profile** | block  | - | 
| **target_resource_id** | string  | - | 
| **enabled** | bool  | - | 
| **notification** | block  | - | 
| **predictive** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the AutoScale Setting. | 