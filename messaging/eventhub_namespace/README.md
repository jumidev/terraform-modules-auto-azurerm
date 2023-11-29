# azurerm_eventhub_namespace

Manages an EventHub Namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the namespace. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `Basic`, `Standard`, `Premium`  | Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource. | 
| **capacity** | string | False | `1`  |  -  | Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`. | 
| **auto_inflate_enabled** | bool | False | -  |  -  | Is Auto Inflate enabled for the EventHub Namespace? | 
| **dedicated_cluster_id** | string | False | -  |  -  | Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **maximum_throughput_units** | string | False | -  |  `1`, `20`  | Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from `1` - `20`. | 
| **zone_redundant** | bool | False | `False`  |  -  | Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **network_rulesets** | block | False | -  |  -  | A `network_rulesets` block. | 
| **local_authentication_enabled** | bool | False | `True`  |  -  | Is SAS authentication enabled for the EventHub Namespace? Defaults to `true`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Is public network access enabled for the EventHub Namespace? Defaults to `true`. | 
| **minimum_tls_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  | The minimum supported TLS version for this EventHub Namespace. Valid values are: `1.0`, `1.1` and `1.2`. The current default minimum TLS version is `1.2`. | 

