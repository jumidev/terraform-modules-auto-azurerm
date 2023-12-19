# azurerm_application_insights_analytics_item

Manages an Application Insights Analytics Item component.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "application_insights/application_insights_analytics_item"   
}

inputs = {
   name = "Specifies the name of the Application Insights Analytics Item..."   
   # application_insights_id → set in component_inputs
   type = "The type of Analytics Item to create"   
   scope = "The scope for the Analytics Item"   
   content = "The content for the Analytics Item, for example the query text if `type` is `que..."   
}

component_inputs = {
   application_insights_id = "path/to/application_insights_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created. | 
| **application_insights_id** | string |  -  |  The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created. | 
| **type** | string |  `query`, `function`, `folder`, `recent`  |  The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created. | 
| **scope** | string |  `shared`, `user`  |  The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions. | 
| **content** | string |  -  |  The content for the Analytics Item, for example the query text if `type` is `query`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **function_alias** | string |  The alias to use for the function. Required when `type` is `function`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Insights Analytics Item. | 
| **time_created** | string | No  | A string containing the time the Analytics Item was created. | 
| **time_modified** | string | No  | A string containing the time the Analytics Item was last modified. | 
| **version** | string | No  | A string indicating the version of the query format | 

Additionally, all variables are provided as outputs.
