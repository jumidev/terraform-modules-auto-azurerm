# azurerm_synapse_firewall_rule

Allows you to Manages a Synapse Firewall Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The Name of the firewall rule. Changing this forces a new resource to be created. | 
| **var.synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse Workspace on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string | True | -  |  -  | The starting IP address to allow through the firewall for this rule. | 
| **var.end_ip_address** | string | True | -  |  -  | The ending IP address to allow through the firewall for this rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **synapse_workspace_id** | string  | - | 
| **start_ip_address** | string  | - | 
| **end_ip_address** | string  | - | 
| **id** | string  | The Synapse Firewall Rule ID. | 