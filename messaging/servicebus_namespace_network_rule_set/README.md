# azurerm_servicebus_namespace_network_rule_set

Manages a ServiceBus Namespace Network Rule Set.> The `azurerm_servicebus_namespace_network_rule_set` resource is deprecatedand will be removed in version 4.0 of the AzureRM provider. Please use`network_rule_set` inside the `azurerm_servicebus_namespace` resource instead.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.namespace_id** | string | True | -  |  -  |  Specifies the ServiceBus Namespace ID to which to attach the ServiceBus Namespace Network Rule Set. Changing this forces a new resource to be created. | 
| **var.default_action** | string | False | `Allow`  |  `Allow`, `Deny`  |  Specifies the default action for the ServiceBus Namespace Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Allow`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  |  Whether to allow traffic over public network. Possible values are `true` and `false`. Defaults to `true`. | 
| **var.trusted_services_allowed** | bool | False | -  |  -  |  If True, then Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration. See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md) | 
| **var.ip_rules** | list | False | -  |  -  |  One or more IP Addresses, or CIDR Blocks which should be able to access the ServiceBus Namespace. | 
| **var.network_rules** | block | False | -  |  -  |  One or more `network_rules` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **namespace_id** | string  | - | 
| **default_action** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **trusted_services_allowed** | bool  | - | 
| **ip_rules** | list  | - | 
| **network_rules** | block  | - | 
| **id** | string  | The ID of the ServiceBus Namespace Network Rule Set. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_namespace_network_rule_set" 
}

inputs = {
   namespace_id = "namespace_id of servicebus_namespace_network_rule_set" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```