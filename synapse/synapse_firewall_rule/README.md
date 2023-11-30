# azurerm_synapse_firewall_rule

Allows you to Manages a Synapse Firewall Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_firewall_rule" 
}

inputs = {
   name = "name of synapse_firewall_rule" 
   synapse_workspace_id = "synapse_workspace_id of synapse_firewall_rule" 
   start_ip_address = "start_ip_address of synapse_firewall_rule" 
   end_ip_address = "end_ip_address of synapse_firewall_rule" 
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
| **var.name** | string | True | The Name of the firewall rule. Changing this forces a new resource to be created. | 
| **var.synapse_workspace_id** | string | True | The ID of the Synapse Workspace on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string | True | The starting IP address to allow through the firewall for this rule. | 
| **var.end_ip_address** | string | True | The ending IP address to allow through the firewall for this rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Synapse Firewall Rule ID. | 

Additionally, all variables are provided as outputs.
