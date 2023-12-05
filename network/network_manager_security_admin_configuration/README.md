# azurerm_network_manager_security_admin_configuration

Manages a Network Manager Security Admin Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_manager_security_admin_configuration"   
}

inputs = {
   name = "Specifies the name which should be used for this Network Manager Security Admin ..."   
   # network_manager_id → set in tfstate_inputs
}

tfstate_inputs = {
   network_manager_id = "path/to/network_manager_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created. | 
| **network_manager_id** | string |  Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **apply_on_network_intent_policy_based_services** | string |  `All`, `None`, `AllowRulesOnly`  |  A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information. | 
| **description** | string |  -  |  A description of the Security Admin Configuration. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Security Admin Configuration. | 

Additionally, all variables are provided as outputs.
