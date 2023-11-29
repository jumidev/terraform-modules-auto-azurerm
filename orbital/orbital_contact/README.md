# azurerm_orbital_contact

Manages an orbital contact.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Contact. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **spacecraft_id** | string | True | -  |  -  | The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created. | 
| **reservation_start_time** | string | True | -  |  -  | Reservation start time of the Contact. Changing this forces a new resource to be created. | 
| **reservation_end_time** | string | True | -  |  -  | Reservation end time of the Contact. Changing this forces a new resource to be created. | 
| **ground_station_name** | string | True | -  |  -  | Name of the Azure ground station. Changing this forces a new resource to be created. | 
| **contact_profile_id** | string | True | -  |  -  | ID of the orbital contact profile. Changing this forces a new resource to be created. | 

