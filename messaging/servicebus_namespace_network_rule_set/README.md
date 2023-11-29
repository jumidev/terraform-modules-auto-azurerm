# azurerm_servicebus_namespace_network_rule_set

Manages a ServiceBus Namespace Network Rule Set.> The `azurerm_servicebus_namespace_network_rule_set` resource is deprecatedand will be removed in version 4.0 of the AzureRM provider. Please use`network_rule_set` inside the `azurerm_servicebus_namespace` resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **namespace_id** | string | True | -  |  -  | Specifies the ServiceBus Namespace ID to which to attach the ServiceBus Namespace Network Rule Set. Changing this forces a new resource to be created. | 
| **default_action** | string | False | `Allow`  |  `Allow`, `Deny`  | Specifies the default action for the ServiceBus Namespace Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Allow`. | 
| **public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  | Whether to allow traffic over public network. Possible values are `true` and `false`. Defaults to `true`. | 
| **trusted_services_allowed** | bool | False | -  |  -  | If True, then Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration. See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md) | 
| **ip_rules** | list | False | -  |  -  | One or more IP Addresses, or CIDR Blocks which should be able to access the ServiceBus Namespace. | 
| **network_rules** | block | False | -  |  -  | One or more `network_rules` blocks. | 

