# azurerm_eventhub_cluster

Manages an EventHub Cluster

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the EventHub Cluster resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the EventHub Cluster exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  -  | The SKU name of the EventHub Cluster. The only supported value at this time is `Dedicated_1`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

