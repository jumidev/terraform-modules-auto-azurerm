# azurerm_lab_service_schedule

Manages a Lab Service Schedule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Lab Service Schedule. Changing this forces a new resource to be created. | 
| **lab_id** | string | True | -  |  -  | The resource ID of the Lab Service Schedule. Changing this forces a new resource to be created. | 
| **stop_time** | string | True | -  |  -  | When Lab User Virtual Machines will be stopped in RFC-3339 format. | 
| **time_zone** | string | True | -  |  -  | The IANA Time Zone ID for the Schedule. | 
| **notes** | string | False | -  |  -  | The notes for the Schedule. | 
| **recurrence** | block | False | -  |  -  | A `recurrence` block. | 
| **start_time** | string | False | -  |  -  | When Lab User Virtual Machines will be started in RFC-3339 format. | 

