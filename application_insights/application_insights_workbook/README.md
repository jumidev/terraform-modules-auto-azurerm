# azurerm_application_insights_workbook

Manages an Azure Workbook.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created. | 
| **display_name** | string | True | -  |  -  | Specifies the user-defined name (display name) of the workbook. | 
| **data_json** | string | True | -  |  -  | Configuration of this particular workbook. Configuration data is a string containing valid JSON. | 
| **source_id** | string | False | `azure monitor`  |  -  | Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`. | 
| **category** | string | False | `workbook`  |  -  | Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`. | 
| **description** | string | False | -  |  -  | Specifies the description of the workbook. | 
| **identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new Workbook to be created. | 
| **storage_container_id** | string | False | -  |  -  | Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Workbook. | 

