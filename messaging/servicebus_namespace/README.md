# azurerm_servicebus_namespace

Manages a ServiceBus Namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to Changing this forces a new resource to be created. create the namespace. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  -  | Defines which tier to use. Options are `Basic`, `Standard` or `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **capacity** | string | False | -  |  -  | Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only. | 
| **customer_managed_key** | block | False | -  |  -  | An `customer_managed_key` block. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to `true`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Is public network access enabled for the Service Bus Namespace? Defaults to `true`. | 
| **minimum_tls_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  | The minimum supported TLS version for this Service Bus Namespace. Valid values are: `1.0`, `1.1` and `1.2`. The current default minimum TLS version is `1.2`. | 
| **zone_redundant** | string | False | -  |  -  | Whether or not this resource is zone redundant. `sku` needs to be `Premium`. Changing this forces a new resource to be created. | 
| **network_rule_set** | block | False | -  |  -  | An `network_rule_set` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

