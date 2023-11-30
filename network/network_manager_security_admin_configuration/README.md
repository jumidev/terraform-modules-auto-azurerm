# azurerm_network_manager_security_admin_configuration

Manages a Network Manager Security Admin Configuration.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_security_admin_configuration" 
}

inputs = {
   name = "name of network_manager_security_admin_configuration" 
   network_manager_id = "network_manager_id of network_manager_security_admin_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created. | 
| **var.network_manager_id** | string | True | -  |  Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created. | 
| **var.apply_on_network_intent_policy_based_services** | string | False | `All`, `None`, `AllowRulesOnly`  |  A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information. | 
| **var.description** | string | False | -  |  A description of the Security Admin Configuration. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Security Admin Configuration. | 

Additionally, all variables are provided as outputs.
