# azurerm_lab_service_schedule

Manages a Lab Service Schedule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "lab_service/lab_service_schedule"   
}

inputs = {
   name = "The name which should be used for this Lab Service Schedule..."   
   lab_id = "The resource ID of the Lab Service Schedule"   
   stop_time = "When Lab User Virtual Machines will be stopped in RFC-3339 format..."   
   time_zone = "The IANA Time Zone ID for the Schedule"   
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
| **name** | string |  The name which should be used for this Lab Service Schedule. Changing this forces a new resource to be created. | 
| **lab_id** | string |  The resource ID of the Lab Service Schedule. Changing this forces a new resource to be created. | 
| **stop_time** | string |  When Lab User Virtual Machines will be stopped in RFC-3339 format. | 
| **time_zone** | string |  The IANA Time Zone ID for the Schedule. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **notes** | string |  The notes for the Schedule. | 
| **recurrence** | [block](#recurrence-block-structure) |  A `recurrence` block. | 
| **start_time** | string |  When Lab User Virtual Machines will be started in RFC-3339 format. | 

### `recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiration_date` | string | Yes | - | When the recurrence will expire in RFC-3339 format. |
| `frequency` | string | Yes | - | The frequency of the recurrence. Possible values are 'Daily' and 'Weekly'. |
| `interval` | string | No | - | The interval to invoke the schedule on. Possible values are between '1' and '365'. |
| `week_days` | string | No | - | The interval to invoke the schedule on. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Lab Service Schedule. | 

Additionally, all variables are provided as outputs.
