# azurerm_servicebus_namespace_network_rule_set

Manages a ServiceBus Namespace Network Rule Set.> The `azurerm_servicebus_namespace_network_rule_set` resource is deprecatedand will be removed in version 4.0 of the AzureRM provider. Please use`network_rule_set` inside the `azurerm_servicebus_namespace` resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/servicebus_namespace_network_rule_set"   
}

inputs = {
   namespace_id = "Specifies the ServiceBus Namespace ID to which to attach the ServiceBus Namespac..."   
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
| **namespace_id** | string |  Specifies the ServiceBus Namespace ID to which to attach the ServiceBus Namespace Network Rule Set. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **default_action** | string |  `Allow`  |  `Allow`, `Deny`  |  Specifies the default action for the ServiceBus Namespace Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Allow`. | 
| **public_network_access_enabled** | bool |  `True`  |  `true`, `false`  |  Whether to allow traffic over public network. Possible values are `true` and `false`. Defaults to `true`. | 
| **trusted_services_allowed** | bool |  -  |  -  |  If True, then Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration. See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md) | 
| **ip_rules** | list |  -  |  -  |  One or more IP Addresses, or CIDR Blocks which should be able to access the ServiceBus Namespace. | 
| **network_rules** | [block](#network_rules-block-structure) |  -  |  -  |  One or more `network_rules` blocks. | 

### `network_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The Subnet ID which should be able to access this ServiceBus Namespace. |
| `ignore_missing_vnet_service_endpoint` | bool | No | False | Should the ServiceBus Namespace Network Rule Set ignore missing Virtual Network Service Endpoint option in the Subnet? Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the ServiceBus Namespace Network Rule Set. | 

Additionally, all variables are provided as outputs.
