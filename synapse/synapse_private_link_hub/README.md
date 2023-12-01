# azurerm_synapse_private_link_hub

Manages a Synapse Private Link Hub.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_private_link_hub" 
}

inputs = {
   name = "name of synapse_private_link_hub" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **name** | string |  The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Synapse Private Link Hub. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse Private Link Hub. | 

Additionally, all variables are provided as outputs.
