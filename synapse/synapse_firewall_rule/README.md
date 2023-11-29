# azurerm_synapse_firewall_rule

Allows you to Manages a Synapse Firewall Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The Name of the firewall rule. Changing this forces a new resource to be created. | 
| **synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse Workspace on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **start_ip_address** | string | True | -  |  -  | The starting IP address to allow through the firewall for this rule. | 
| **end_ip_address** | string | True | -  |  -  | The ending IP address to allow through the firewall for this rule. | 

