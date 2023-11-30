# azurerm_palo_alto_network_virtual_appliance

Manages a Palo Alto Network Virtual Appliance.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Palo Alto Local Network Virtual Appliance. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created. | 
| **var.virtual_hub_id** | string | True | The ID of the Virtual Hub to deploy this appliance onto. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **id** | string  | The ID of the Palo Alto Local Network Virtual Appliance. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_network_virtual_appliance" 
}

inputs = {
   name = "name of palo_alto_network_virtual_appliance" 
   virtual_hub_id = "virtual_hub_id of palo_alto_network_virtual_appliance" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```