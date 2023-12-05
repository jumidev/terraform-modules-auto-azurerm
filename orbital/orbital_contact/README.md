# azurerm_orbital_contact

Manages an orbital contact.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "orbital/orbital_contact"   
}

inputs = {
   name = "The name of the Contact"   
   spacecraft_id = "The ID of the spacecraft which the contact will be made to..."   
   reservation_start_time = "Reservation start time of the Contact"   
   reservation_end_time = "Reservation end time of the Contact"   
   ground_station_name = "Name of the Azure ground station"   
   contact_profile_id = "ID of the orbital contact profile"   
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
| **name** | string |  The name of the Contact. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **spacecraft_id** | string |  The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created. | 
| **reservation_start_time** | string |  Reservation start time of the Contact. Changing this forces a new resource to be created. | 
| **reservation_end_time** | string |  Reservation end time of the Contact. Changing this forces a new resource to be created. | 
| **ground_station_name** | string |  Name of the Azure ground station. Changing this forces a new resource to be created. | 
| **contact_profile_id** | string |  ID of the orbital contact profile. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Contact. | 

Additionally, all variables are provided as outputs.
