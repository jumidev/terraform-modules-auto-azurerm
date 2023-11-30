# azurerm_servicebus_namespace

Manages a ServiceBus Namespace.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to Changing this forces a new resource to be created. create the namespace. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  -  |  Defines which tier to use. Options are `Basic`, `Standard` or `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.capacity** | string | False | -  |  -  |  Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only. | 
| **var.customer_managed_key** | block | False | -  |  -  |  An `customer_managed_key` block. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to `true`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Is public network access enabled for the Service Bus Namespace? Defaults to `true`. | 
| **var.minimum_tls_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  |  The minimum supported TLS version for this Service Bus Namespace. Valid values are: `1.0`, `1.1` and `1.2`. The current default minimum TLS version is `1.2`. | 
| **var.zone_redundant** | string | False | -  |  -  |  Whether or not this resource is zone redundant. `sku` needs to be `Premium`. Changing this forces a new resource to be created. | 
| **var.network_rule_set** | block | False | -  |  -  |  An `network_rule_set` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | string  | - | 
| **identity** | block  | - | 
| **capacity** | string  | - | 
| **customer_managed_key** | block  | - | 
| **local_auth_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **minimum_tls_version** | string  | - | 
| **zone_redundant** | string  | - | 
| **network_rule_set** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ServiceBus Namespace ID. | 
| **identity** | block  | An `identity` block, which contains the Managed Service Identity information for this ServiceBus Namespace. | 
| **endpoint** | string  | The URL to access the ServiceBus Namespace. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this ServiceBus Namespace. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this ServiceBus Namespace. | 
| **default_primary_connection_string** | string  | The primary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string** | string  | The secondary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_primary_key** | string  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_key** | string  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_namespace" 
}

inputs = {
   name = "name of servicebus_namespace" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of servicebus_namespace" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```