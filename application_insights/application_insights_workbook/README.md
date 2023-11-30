# azurerm_application_insights_workbook

Manages an Azure Workbook.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created. | 
| **var.display_name** | string | True | -  |  Specifies the user-defined name (display name) of the workbook. | 
| **var.data_json** | string | True | -  |  Configuration of this particular workbook. Configuration data is a string containing valid JSON. | 
| **var.source_id** | string | False | `azure monitor`  |  Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`. | 
| **var.category** | string | False | `workbook`  |  Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`. | 
| **var.description** | string | False | -  |  Specifies the description of the workbook. | 
| **var.identity** | block | False | -  |  An `identity` block. Changing this forces a new Workbook to be created. | 
| **var.storage_container_id** | string | False | -  |  Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Workbook. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **display_name** | string  | - | 
| **data_json** | string  | - | 
| **source_id** | string  | - | 
| **category** | string  | - | 
| **description** | string  | - | 
| **identity** | block  | - | 
| **storage_container_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Workbook. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "application_insights/application_insights_workbook" 
}

inputs = {
   name = "name of application_insights_workbook" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   display_name = "display_name of application_insights_workbook" 
   data_json = "data_json of application_insights_workbook" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```