# azurerm_application_insights_analytics_item

Manages an Application Insights Analytics Item component.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created. | 
| **application_insights_id** | string | True | -  |  -  | The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  -  | The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created. | 
| **scope** | string | True | -  |  -  | The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions. | 
| **content** | string | True | -  |  -  | The content for the Analytics Item, for example the query text if `type` is `query`. | 
| **function_alias** | string | False | -  |  -  | The alias to use for the function. Required when `type` is `function`. | 

