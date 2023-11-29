# azurerm_orbital_contact

Manages an orbital contact.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Contact. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **var.spacecraft_id** | string | True | -  |  -  | The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created. | 
| **var.reservation_start_time** | string | True | -  |  -  | Reservation start time of the Contact. Changing this forces a new resource to be created. | 
| **var.reservation_end_time** | string | True | -  |  -  | Reservation end time of the Contact. Changing this forces a new resource to be created. | 
| **var.ground_station_name** | string | True | -  |  -  | Name of the Azure ground station. Changing this forces a new resource to be created. | 
| **var.contact_profile_id** | string | True | -  |  -  | ID of the orbital contact profile. Changing this forces a new resource to be created. | 



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