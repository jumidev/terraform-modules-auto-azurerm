# azurerm_billing_account_cost_management_export

Manages a Cost Management Export for a Billing Account.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Cost Management Export. Changing this forces a new resource to be created. | 
| **var.billing_account_id** | string | True | -  |  -  |  The id of the billing account on which to create an export. Changing this forces a new resource to be created. | 
| **var.recurrence_type** | string | True | -  |  `Annually`, `Daily`, `Monthly`, `Weekly`  |  How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`. | 
| **var.recurrence_period_start_date** | datetime | True | -  |  -  |  The date the export will start capturing information. | 
| **var.recurrence_period_end_date** | datetime | True | -  |  -  |  The date the export will stop capturing information. | 
| **var.export_data_storage_location** | block | True | -  |  -  |  A `export_data_storage_location` block. | 
| **var.export_data_options** | block | True | -  |  -  |  A `export_data_options` block. | 
| **var.active** | bool | False | `True`  |  -  |  Is the cost management export active? Default is `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **billing_account_id** | string  | - | 
| **recurrence_type** | string  | - | 
| **recurrence_period_start_date** | datetime  | - | 
| **recurrence_period_end_date** | datetime  | - | 
| **export_data_storage_location** | block  | - | 
| **export_data_options** | block  | - | 
| **active** | bool  | - | 
| **id** | string  | The ID of the Cost Management Export for this Billing Account. | 