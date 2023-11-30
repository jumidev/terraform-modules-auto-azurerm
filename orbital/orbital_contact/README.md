# azurerm_orbital_contact

Manages an orbital contact.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Contact. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **var.spacecraft_id** | string | True | The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created. | 
| **var.reservation_start_time** | string | True | Reservation start time of the Contact. Changing this forces a new resource to be created. | 
| **var.reservation_end_time** | string | True | Reservation end time of the Contact. Changing this forces a new resource to be created. | 
| **var.ground_station_name** | string | True | Name of the Azure ground station. Changing this forces a new resource to be created. | 
| **var.contact_profile_id** | string | True | ID of the orbital contact profile. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spacecraft_id** | string  | - | 
| **reservation_start_time** | string  | - | 
| **reservation_end_time** | string  | - | 
| **ground_station_name** | string  | - | 
| **contact_profile_id** | string  | - | 
| **id** | string  | The ID of the Contact. | 

## Example minimal hclt

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