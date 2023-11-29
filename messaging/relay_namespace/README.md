# azurerm_relay_namespace

Manages an Azure Relay Namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Azure Relay Namespace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Azure Relay Namespace. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Azure Relay Namespace exists. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  -  | The name of the SKU to use. At this time the only supported value is `Standard`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

