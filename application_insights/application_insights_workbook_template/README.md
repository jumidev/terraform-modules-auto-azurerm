# azurerm_application_insights_workbook_template

Manages an Application Insights Workbook Template.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Application Insights Workbook Template. Changing this forces a new Application Insights Workbook Template to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created. | 
| **galleries** | block | True | -  |  -  | A `galleries` block. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created. | 
| **template_data** | string | True | -  |  -  | Valid JSON object containing workbook template payload. | 
| **author** | string | False | -  |  -  | Information about the author of the workbook template. | 
| **localized** | string | False | -  |  -  | Key value pairs of localized gallery. Each key is the locale code of languages supported by the Azure portal. | 
| **priority** | string | False | `0`  |  -  | Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode. Defaults to `0`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Application Insights Workbook Template. | 

