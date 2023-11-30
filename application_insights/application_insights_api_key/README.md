# azurerm_application_insights_api_key

Manages an Application Insights API key.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "application_insights/application_insights_api_key" 
}

inputs = {
   name = "name of application_insights_api_key" 
   application_insights_id = "application_insights_id of application_insights_api_key" 
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
| **var.name** | string |  Specifies the name of the Application Insights API key. Changing this forces a new resource to be created. | 
| **var.application_insights_id** | string |  The ID of the Application Insights component on which the API key operates. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.read_permissions** | string |  `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`  |  Specifies the list of read permissions granted to the API key. Valid values are `agentconfig`, `aggregate`, `api`, `draft`, `extendqueries`, `search`. Please note these values are case sensitive. Changing this forces a new resource to be created. | 
| **var.write_permissions** | string |  `annotations`  |  Specifies the list of write permissions granted to the API key. Valid values are `annotations`. Please note these values are case sensitive. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights API key. | 
| **api_key** | string | No  | The API Key secret (Sensitive). | 

Additionally, all variables are provided as outputs.
