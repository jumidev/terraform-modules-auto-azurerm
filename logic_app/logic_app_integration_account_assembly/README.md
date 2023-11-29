# azurerm_logic_app_integration_account_assembly

Manages a Logic App Integration Account Assembly.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created. | 
| **integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **assembly_name** | string | True | -  |  -  | The name of the Logic App Integration Account Assembly. | 
| **assembly_version** | string | False | `0.0.0.0`  |  -  | The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`. | 
| **content** | string | False | -  |  -  | The content of the Logic App Integration Account Assembly. | 
| **content_link_uri** | string | False | -  |  -  | The content link URI of the Logic App Integration Account Assembly. | 
| **metadata** | string | False | -  |  -  | The metadata of the Logic App Integration Account Assembly. | 

