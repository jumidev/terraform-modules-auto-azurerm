# azurerm_synapse_firewall_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_firewall_rule"   
}
inputs = {
   name = "The Name of the firewall rule"   
   # synapse_workspace_id → set in component_inputs
   start_ip_address = "The starting IP address to allow through the firewall for this rule..."   
   end_ip_address = "The ending IP address to allow through the firewall for this rule..."   
}
component_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
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
| **name** | string |  -  |  The Name of the firewall rule. Changing this forces a new resource to be created. | 
| **synapse_workspace_id** | string |  -  |  The ID of the Synapse Workspace on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **start_ip_address** | string |  -  |  The starting IP address to allow through the firewall for this rule. | 
| **end_ip_address** | string |  `start_ip_address`, `end_ip_address`, `0.0.0.0`  |  The ending IP address to allow through the firewall for this rule. -> **NOTE:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0`. -> **NOTE:** The Azure feature `Allow access to Azure services` requires the `name` to be `AllowAllWindowsAzureIps`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **end_ip_address** | string | No  | The ending IP address to allow through the firewall for this rule. -> **NOTE:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0`. -> **NOTE:** The Azure feature `Allow access to Azure services` requires the `name` to be `AllowAllWindowsAzureIps`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Synapse Firewall Rule ID. | 

Additionally, all variables are provided as outputs.
