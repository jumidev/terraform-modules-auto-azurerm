# azurerm_resource_group_cost_management_export

Manages a Cost Management Export for a Resource Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Cost Management Export. Changing this forces a new resource to be created. | 
| **resource_group_id** | string | True | -  |  -  | The id of the resource group on which to create an export. Changing this forces a new resource to be created. | 
| **recurrence_type** | string | True | -  |  `Annually`, `Daily`, `Monthly`, `Weekly`  | How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`. | 
| **recurrence_period_start_date** | datetime | True | -  |  -  | The date the export will start capturing information. | 
| **recurrence_period_end_date** | datetime | True | -  |  -  | The date the export will stop capturing information. | 
| **export_data_storage_location** | block | True | -  |  -  | A `export_data_storage_location` block. | 
| **export_data_options** | block | True | -  |  -  | A `export_data_options` block. | 
| **active** | bool | False | `True`  |  -  | Is the cost management export active? Default is `true`. | 

