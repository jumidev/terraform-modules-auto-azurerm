# azurerm_application_insights_analytics_item

Manages an Application Insights Analytics Item component.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created. | 
| **var.application_insights_id** | string | True | The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created. | 
| **var.type** | string | True | The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions. | 
| **var.content** | string | True | The content for the Analytics Item, for example the query text if `type` is `query`. | 
| **var.function_alias** | string | False | The alias to use for the function. Required when `type` is `function`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **application_insights_id** | string  | - | 
| **type** | string  | - | 
| **scope** | string  | - | 
| **content** | string  | - | 
| **function_alias** | string  | - | 
| **id** | string  | The ID of the Application Insights Analytics Item. | 
| **time_created** | string  | A string containing the time the Analytics Item was created. | 
| **time_modified** | string  | A string containing the time the Analytics Item was last modified. | 
| **version** | string  | A string indicating the version of the query format | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "application_insights/application_insights_analytics_item" 
}

inputs = {
   name = "name of application_insights_analytics_item" 
   application_insights_id = "application_insights_id of application_insights_analytics_item" 
   type = "type of application_insights_analytics_item" 
   scope = "scope of application_insights_analytics_item" 
   content = "content of application_insights_analytics_item" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```