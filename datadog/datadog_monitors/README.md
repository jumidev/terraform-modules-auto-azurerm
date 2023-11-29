# azurerm_datadog_monitors

Manages a datadog Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **sku_name** | string | True | -  |  -  | The name which should be used for this sku. | 
| **identity** | block | False | -  |  -  | A `identity` block. | 
| **user** | block | True | -  |  -  | A `user` block. | 
| **datadog_organization** | block | True | -  |  -  | A `datadog_organization` block. | 
| **monitoring_enabled** | bool | False | `True`  |  -  | Is monitoring enabled? Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Datadog Monitor. | 

