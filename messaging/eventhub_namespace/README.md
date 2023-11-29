# azurerm_eventhub_namespace

Manages an EventHub Namespace.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the namespace. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `Basic`, `Standard`, `Premium`  | Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource. | 
| **var.capacity** | string | False | `1`  |  -  | Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`. | 
| **var.auto_inflate_enabled** | bool | False | -  |  -  | Is Auto Inflate enabled for the EventHub Namespace? | 
| **var.dedicated_cluster_id** | string | False | -  |  -  | Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.maximum_throughput_units** | string | False | -  |  `1`, `20`  | Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from `1` - `20`. | 
| **var.zone_redundant** | bool | False | `False`  |  -  | Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **var.network_rulesets** | block | False | -  |  -  | A `network_rulesets` block. | 
| **var.local_authentication_enabled** | bool | False | `True`  |  -  | Is SAS authentication enabled for the EventHub Namespace? Defaults to `true`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  | Is public network access enabled for the EventHub Namespace? Defaults to `true`. | 
| **var.minimum_tls_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  | The minimum supported TLS version for this EventHub Namespace. Valid values are: `1.0`, `1.1` and `1.2`. The current default minimum TLS version is `1.2`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | string  | - | 
| **capacity** | string  | - | 
| **auto_inflate_enabled** | bool  | - | 
| **dedicated_cluster_id** | string  | - | 
| **identity** | block  | - | 
| **maximum_throughput_units** | string  | - | 
| **zone_redundant** | bool  | - | 
| **tags** | map  | - | 
| **network_rulesets** | block  | - | 
| **local_authentication_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **minimum_tls_version** | string  | - | 
| **id** | string  | The EventHub Namespace ID. | 
| **identity** | block  | An `identity` block. | 
| **default_primary_connection_string** | string  | The primary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_primary_connection_string_alias** | string  | The alias of the primary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled. | 
| **default_primary_key** | string  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string** | string  | The secondary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string_alias** | string  | The alias of the secondary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled. | 
| **default_secondary_key** | string  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 