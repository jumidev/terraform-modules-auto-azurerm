# azurerm_network_manager_admin_rule_collection

Manages a Network Manager Admin Rule Collection.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_admin_rule_collection" 
}

inputs = {
   name = "name of network_manager_admin_rule_collection" 
   security_admin_configuration_id = "security_admin_configuration_id of network_manager_admin_rule_collection" 
   network_group_ids = "network_group_ids of network_manager_admin_rule_collection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created. | 
| **var.security_admin_configuration_id** | string | True | Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created. | 
| **var.network_group_ids** | list | True | A list of Network Group ID which this Network Manager Admin Rule Collection applies to. | 
| **var.description** | string | False | A description of the Network Manager Admin Rule Collection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Admin Rule Collection. | 

Additionally, all variables are provided as outputs.
