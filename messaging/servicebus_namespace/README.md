# azurerm_servicebus_namespace

Manages a ServiceBus Namespace.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to Changing this forces a new resource to be created. create the namespace. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string |  Defines which tier to use. Options are `Basic`, `Standard` or `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **var.capacity** | string |  -  |  -  |  Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only. | 
| **var.customer_managed_key** | [block](#customer_managed_key-block-structure) |  -  |  -  |  An `customer_managed_key` block. | 
| **var.local_auth_enabled** | bool |  `True`  |  -  |  Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to `true`. | 
| **var.public_network_access_enabled** | bool |  `True`  |  -  |  Is public network access enabled for the Service Bus Namespace? Defaults to `true`. | 
| **var.minimum_tls_version** | string |  -  |  `1.0`, `1.1`, `1.2`  |  The minimum supported TLS version for this Service Bus Namespace. Valid values are: `1.0`, `1.1` and `1.2`. The current default minimum TLS version is `1.2`. | 
| **var.zone_redundant** | string |  -  |  -  |  Whether or not this resource is zone redundant. `sku` needs to be `Premium`. Changing this forces a new resource to be created. | 
| **var.network_rule_set** | [block](#network_rule_set-block-structure) |  -  |  -  |  An `network_rule_set` block. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this ServiceBus Namespace. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this ServiceBus namespace. |

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | The ID of the Key Vault Key which should be used to Encrypt the data in this ServiceBus Namespace. |
| `identity_id` | string | Yes | - | The ID of the User Assigned Identity that has access to the key. |
| `infrastructure_encryption_enabled` | bool | No | - | Used to specify whether enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created. |

### `network_rule_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | No | Allow | Specifies the default action for the Network Rule Set. Possible values are 'Allow' and 'Deny'. Defaults to 'Allow'. |
| `public_network_access_enabled` | bool | No | True | Whether to allow traffic over public network. Possible values are 'true' and 'false'. Defaults to 'true'. |
| `trusted_services_allowed` | bool | No | - | Are Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration? See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md) |
| `ip_rules` | list | No | - | One or more IP Addresses, or CIDR Blocks which should be able to access the ServiceBus Namespace. |
| `network_rules` | block | No | - | One or more 'network_rules' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ServiceBus Namespace ID. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this ServiceBus Namespace. | 
| **endpoint** | string | No  | The URL to access the ServiceBus Namespace. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this ServiceBus Namespace. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this ServiceBus Namespace. | 
| **default_primary_connection_string** | string | No  | The primary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string** | string | No  | The secondary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_primary_key** | string | No  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_key** | string | No  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 

Additionally, all variables are provided as outputs.
