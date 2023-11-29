# azurerm_network_manager_security_admin_configuration

Manages a Network Manager Security Admin Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created. | 
| **network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created. | 
| **apply_on_network_intent_policy_based_services** | string | False | -  |  `All`, `None`, `AllowRulesOnly`  | A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information. | 
| **description** | string | False | -  |  -  | A description of the Security Admin Configuration. | 

