# azurerm_application_insights_workbook_template

Manages an Application Insights Workbook Template.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "application_insights/application_insights_workbook_template" 
}

inputs = {
   name = "name of application_insights_workbook_template" 
   resource_group_name = "${resource_group}" 
   galleries = "galleries of application_insights_workbook_template" 
   location = "${location}" 
   template_data = "template_data of application_insights_workbook_template" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Application Insights Workbook Template. Changing this forces a new Application Insights Workbook Template to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created. | 
| **var.galleries** | block | True | -  |  A `galleries` block. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created. | 
| **var.template_data** | string | True | -  |  Valid JSON object containing workbook template payload. | 
| **var.author** | string | False | -  |  Information about the author of the workbook template. | 
| **var.localized** | string | False | -  |  Key value pairs of localized gallery. Each key is the locale code of languages supported by the Azure portal. | 
| **var.priority** | string | False | `0`  |  Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode. Defaults to `0`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Application Insights Workbook Template. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights Workbook Template. | 

Additionally, all variables are provided as outputs.
