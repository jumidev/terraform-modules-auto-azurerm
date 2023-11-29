# azurerm_eventhub_cluster

Manages an EventHub Cluster

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the EventHub Cluster resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the EventHub Cluster exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | The SKU name of the EventHub Cluster. The only supported value at this time is `Dedicated_1`. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The EventHub Cluster ID. | 