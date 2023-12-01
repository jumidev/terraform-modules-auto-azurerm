# azurerm_application_insights_workbook_template

Manages an Application Insights Workbook Template.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "application_insights/application_insights_workbook_template" 
}

inputs = {
   name = "name of application_insights_workbook_template" 
   resource_group_name = "${resource_group}" 
   galleries = {
      example_galleries = {
         category = "..."   
      }
  
   }
 
   location = "${location}" 
   template_data = "template_data of application_insights_workbook_template" 
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
| **name** | string |  Specifies the name which should be used for this Application Insights Workbook Template. Changing this forces a new Application Insights Workbook Template to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created. | 
| **galleries** | [block](#galleries-block-structure) |  A `galleries` block. | 
| **location** | string |  Specifies the Azure Region where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created. | 
| **template_data** | string |  Valid JSON object containing workbook template payload. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **author** | string |  -  |  Information about the author of the workbook template. | 
| **localized** | string |  -  |  Key value pairs of localized gallery. Each key is the locale code of languages supported by the Azure portal. | 
| **priority** | string |  `0`  |  Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode. Defaults to `0`. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Application Insights Workbook Template. | 

### `galleries` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `category` | string | Yes | - | Category for the gallery. |
| `order` | string | No | 0 | Order of the template within the gallery. Defaults to '0'. |
| `resource_type` | string | No | Azure Monitor | Azure resource type supported by the gallery. Defaults to 'Azure Monitor'. |
| `type` | string | No | workbook | Type of workbook supported by the workbook template. Defaults to 'workbook'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights Workbook Template. | 

Additionally, all variables are provided as outputs.
