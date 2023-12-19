# azurerm_eventhub_namespace

Manages an EventHub Namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/eventhub_namespace"   
}

inputs = {
   name = "Specifies the name of the EventHub Namespace resource..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = "Defines which tier to use"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the namespace. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string |  `Basic`, `Standard`, `Premium`  |  Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **capacity** | string |  `1`  |  `Standard`, `2`  |  Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`. | 
| **auto_inflate_enabled** | bool |  -  |  -  |  Is Auto Inflate enabled for the EventHub Namespace? | 
| **dedicated_cluster_id** | string |  -  |  -  |  Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **maximum_throughput_units** | string |  -  |  `1`, `20`  |  Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from `1` - `20`. | 
| **zone_redundant** | bool |  `False`  |  -  |  Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to `false`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **network_rulesets** | [block](#network_rulesets-block-structure) |  -  |  -  |  A `network_rulesets` block. | 
| **local_authentication_enabled** | bool |  `True`  |  -  |  Is SAS authentication enabled for the EventHub Namespace? Defaults to `true`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Is public network access enabled for the EventHub Namespace? Defaults to `true`. | 
| **minimum_tls_version** | string |  -  |  `1.0`, `1.1`, `1.2`  |  The minimum supported TLS version for this EventHub Namespace. Valid values are: `1.0`, `1.1` and `1.2`. The current default minimum TLS version is `1.2`. | 

### `ip_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_mask` | string | Yes | - | The IP mask to match on. |
| `action` | string | No | Allow | The action to take when the rule is matched. Possible values are 'Allow'. Defaults to 'Allow'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are 'SystemAssigned' or 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace. |

### `network_rulesets` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | Yes | - | The default action to take when a rule is not matched. Possible values are 'Allow' and 'Deny'. |
| `public_network_access_enabled` | bool | No | True | Is public network access enabled for the EventHub Namespace? Defaults to 'true'. |
| `trusted_service_access_enabled` | bool | No | - | Whether Trusted Microsoft Services are allowed to bypass firewall. |
| `virtual_network_rule` | [block](#virtual_network_rule-block-structure) | No | - | One or more 'virtual_network_rule' blocks. |
| `ip_rule` | [block](#ip_rule-block-structure) | No | - | One or more 'ip_rule' blocks. |

### `virtual_network_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The id of the subnet to match on. |
| `ignore_missing_virtual_network_service_endpoint` | string | No | - | Are missing virtual network service endpoints ignored? |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventHub Namespace ID. | 
| **identity** | block | No  | An `identity` block. | 
| **default_primary_connection_string** | string | No  | The primary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_primary_connection_string_alias** | string | No  | The alias of the primary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled. | 
| **default_primary_key** | string | Yes  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string** | string | No  | The secondary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string_alias** | string | No  | The alias of the secondary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled. | 
| **default_secondary_key** | string | Yes  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
