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

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string  -  |  The name which should be used for this Data Share. Changing this forces a new Data Share to be created. | 
| **var.account_id** | string  -  |  The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created. | 
| **var.kind** | string  `CopyBased`, `InPlace`  |  The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  The Data Share's description. | 
| **var.snapshot_schedule** | block  A `snapshot_schedule` block. | 
| **var.terms** | string  The terms of the Data Share. | 

### `snapshot_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `recurrence` | string | Yes | - | The interval of the synchronization with the source data. Possible values are 'Hour' and 'Day'. |
| `start_time` | string | Yes | - | The synchronization with the source data's start time. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Share. | 

Additionally, all variables are provided as outputs.
