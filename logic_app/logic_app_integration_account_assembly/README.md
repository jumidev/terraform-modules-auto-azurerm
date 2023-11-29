# azurerm_logic_app_integration_account_assembly

Manages a Logic App Integration Account Assembly.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created. | 
| **var.integration_account_name** | string | True | -  |  The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **var.assembly_name** | string | True | -  |  The name of the Logic App Integration Account Assembly. | 
| **var.assembly_version** | string | False | `0.0.0.0`  |  The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`. | 
| **var.content** | string | False | -  |  The content of the Logic App Integration Account Assembly. | 
| **var.content_link_uri** | string | False | -  |  The content link URI of the Logic App Integration Account Assembly. | 
| **var.metadata** | string | False | -  |  The metadata of the Logic App Integration Account Assembly. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **assembly_name** | string  | - | 
| **assembly_version** | string  | - | 
| **content** | string  | - | 
| **content_link_uri** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Assembly. | 