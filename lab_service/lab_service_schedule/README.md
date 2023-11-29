# azurerm_lab_service_schedule

Manages a Lab Service Schedule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Lab Service Schedule. Changing this forces a new resource to be created. | 
| **var.lab_id** | string | True | -  |  -  | The resource ID of the Lab Service Schedule. Changing this forces a new resource to be created. | 
| **var.stop_time** | string | True | -  |  -  | When Lab User Virtual Machines will be stopped in RFC-3339 format. | 
| **var.time_zone** | string | True | -  |  -  | The IANA Time Zone ID for the Schedule. | 
| **var.notes** | string | False | -  |  -  | The notes for the Schedule. | 
| **var.recurrence** | block | False | -  |  -  | A `recurrence` block. | 
| **var.start_time** | string | False | -  |  -  | When Lab User Virtual Machines will be started in RFC-3339 format. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **lab_id** | string  | - | 
| **stop_time** | string  | - | 
| **time_zone** | string  | - | 
| **notes** | string  | - | 
| **recurrence** | block  | - | 
| **start_time** | string  | - | 
| **id** | string  | The ID of the Lab Service Schedule. | 