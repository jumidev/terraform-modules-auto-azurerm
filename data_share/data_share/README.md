# azurerm_data_share

Manages a Data Share.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_share/data_share" 
}

inputs = {
   name = "name of data_share" 
   account_id = "account_id of data_share" 
   kind = "kind of data_share" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Data Share. Changing this forces a new Data Share to be created. | 
| **var.account_id** | string | True | -  |  The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created. | 
| **var.kind** | string | True | `CopyBased`, `InPlace`  |  The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created. | 
| **var.description** | string | False | -  |  The Data Share's description. | 
| **var.snapshot_schedule** | block | False | -  |  A `snapshot_schedule` block. | 
| **var.terms** | string | False | -  |  The terms of the Data Share. | 

### `snapshot_schedule` block structure

> `name` (string): (REQUIRED) The name of the snapshot schedule.
> `recurrence` (string): (REQUIRED) The interval of the synchronization with the source data. Possible values are 'Hour' and 'Day'.
> `start_time` (string): (REQUIRED) The synchronization with the source data's start time.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Share. | 

Additionally, all variables are provided as outputs.
