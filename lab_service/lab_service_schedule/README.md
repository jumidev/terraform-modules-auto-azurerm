# azurerm_lab_service_schedule

Manages a Lab Service Schedule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "lab_service/lab_service_schedule" 
}

inputs = {
   name = "name of lab_service_schedule" 
   lab_id = "lab_id of lab_service_schedule" 
   stop_time = "stop_time of lab_service_schedule" 
   time_zone = "time_zone of lab_service_schedule" 
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
| **var.name** | string | True | The name which should be used for this Lab Service Schedule. Changing this forces a new resource to be created. | 
| **var.lab_id** | string | True | The resource ID of the Lab Service Schedule. Changing this forces a new resource to be created. | 
| **var.stop_time** | string | True | When Lab User Virtual Machines will be stopped in RFC-3339 format. | 
| **var.time_zone** | string | True | The IANA Time Zone ID for the Schedule. | 
| **var.notes** | string | False | The notes for the Schedule. | 
| **var.recurrence** | block | False | A `recurrence` block. | 
| **var.start_time** | string | False | When Lab User Virtual Machines will be started in RFC-3339 format. | 

### `recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiration_date` | datetime | Yes | - | When the recurrence will expire in RFC-3339 format. |
| `frequency` | string | Yes | - | The frequency of the recurrence. Possible values are 'Daily' and 'Weekly'. |
| `interval` | string | No | - | The interval to invoke the schedule on. Possible values are between '1' and '365'. |
| `week_days` | string | No | - | The interval to invoke the schedule on. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Lab Service Schedule. | 

Additionally, all variables are provided as outputs.
