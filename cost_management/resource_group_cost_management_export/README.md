# azurerm_resource_group_cost_management_export

Manages a Cost Management Export for a Resource Group.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Cost Management Export. Changing this forces a new resource to be created. | 
| **var.resource_group_id** | string | True | -  |  -  |  The id of the resource group on which to create an export. Changing this forces a new resource to be created. | 
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
| **resource_group_id** | string  | - | 
| **recurrence_type** | string  | - | 
| **recurrence_period_start_date** | datetime  | - | 
| **recurrence_period_end_date** | datetime  | - | 
| **export_data_storage_location** | block  | - | 
| **export_data_options** | block  | - | 
| **active** | bool  | - | 
| **id** | string  | The ID of the Cost Management Export for this Resource Group. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/resource_group_cost_management_export" 
}

inputs = {
   name = "name of resource_group_cost_management_export" 
   resource_group_id = "resource_group_id of resource_group_cost_management_export" 
   recurrence_type = "recurrence_type of resource_group_cost_management_export" 
   recurrence_period_start_date = "recurrence_period_start_date of resource_group_cost_management_export" 
   recurrence_period_end_date = "recurrence_period_end_date of resource_group_cost_management_export" 
   export_data_storage_location = "export_data_storage_location of resource_group_cost_management_export" 
   export_data_options = "export_data_options of resource_group_cost_management_export" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```