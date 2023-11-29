# azurerm_datadog_monitors

Manages a datadog Monitor.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **var.sku_name** | string | True | -  |  The name which should be used for this sku. | 
| **var.identity** | block | False | -  |  A `identity` block. | 
| **var.user** | block | True | -  |  A `user` block. | 
| **var.datadog_organization** | block | True | -  |  A `datadog_organization` block. | 
| **var.monitoring_enabled** | bool | False | `True`  |  Is monitoring enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Datadog Monitor. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **identity** | block  | - | 
| **user** | block  | - | 
| **datadog_organization** | block  | - | 
| **monitoring_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Datadog Monitor. | 
| **identity** | block  | A `identity` block. | 
| **marketplace_subscription_status** | string  | Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this Datadog Monitor. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this Datadog Monitor. | 