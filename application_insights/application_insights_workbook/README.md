# azurerm_application_insights_workbook

Manages an Azure Workbook.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created. | 
| **var.resource_group_name** | string  Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created. | 
| **var.location** | string  Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created. | 
| **var.display_name** | string  Specifies the user-defined name (display name) of the workbook. | 
| **var.data_json** | string  Configuration of this particular workbook. Configuration data is a string containing valid JSON. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.source_id** | string  `azure monitor`  |  Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`. | 
| **var.category** | string  `workbook`  |  Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`. | 
| **var.description** | string  -  |  Specifies the description of the workbook. | 
| **var.identity** | block  -  |  An `identity` block. Changing this forces a new Workbook to be created. | 
| **var.storage_container_id** | string  -  |  Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created. | 
| **var.tags** | map  -  |  A mapping of tags which should be assigned to the Workbook. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of Managed Service Identity that is configured on this Workbook. Possible values are 'UserAssigned', 'SystemAssigned' and 'SystemAssigned, UserAssigned'. Changing this forces a new resource to be created. |
| `principal_id` | string | No | - | The Principal ID of the System Assigned Managed Service Identity that is configured on this Workbook. |
| `tenant_id` | string | No | - | The Tenant ID of the System Assigned Managed Service Identity that is configured on this Workbook. |
| `identity_ids` | string | No | - | The list of User Assigned Managed Identity IDs assigned to this Workbook. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Workbook. | 

Additionally, all variables are provided as outputs.
