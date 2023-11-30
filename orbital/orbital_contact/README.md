# azurerm_orbital_contact

Manages an orbital contact.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "orbital/orbital_contact" 
}

inputs = {
   name = "name of orbital_contact" 
   spacecraft_id = "spacecraft_id of orbital_contact" 
   reservation_start_time = "reservation_start_time of orbital_contact" 
   reservation_end_time = "reservation_end_time of orbital_contact" 
   ground_station_name = "ground_station_name of orbital_contact" 
   contact_profile_id = "contact_profile_id of orbital_contact" 
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
| **var.name** | string  The name of the Contact. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **var.spacecraft_id** | string  The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created. | 
| **var.reservation_start_time** | string  Reservation start time of the Contact. Changing this forces a new resource to be created. | 
| **var.reservation_end_time** | string  Reservation end time of the Contact. Changing this forces a new resource to be created. | 
| **var.ground_station_name** | string  Name of the Azure ground station. Changing this forces a new resource to be created. | 
| **var.contact_profile_id** | string  ID of the orbital contact profile. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Contact. | 

Additionally, all variables are provided as outputs.
