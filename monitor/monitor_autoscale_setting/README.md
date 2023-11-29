# azurerm_monitor_autoscale_setting

Manages a AutoScale Setting which can be applied to Virtual Machine Scale Sets, App Services and other scalable resources.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the AutoScale Setting. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created. | 
| **profile** | block | True | -  |  -  | Specifies one or more (up to 20) `profile` blocks. | 
| **target_resource_id** | string | True | -  |  -  | Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  -  | Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`. | 
| **notification** | block | False | -  |  -  | Specifies a `notification` block. | 
| **predictive** | block | False | -  |  -  | A `predictive` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

