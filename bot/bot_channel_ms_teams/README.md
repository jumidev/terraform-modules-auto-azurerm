# azurerm_bot_channel_ms_teams

Manages a MS Teams integration for a Bot Channel~> **Note** A bot can only have a single MS Teams Channel associated with it.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | -  |  -  |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.calling_web_hook** | string | False | -  |  -  |  Specifies the webhook for Microsoft Teams channel calls. | 
| **var.deployment_environment** | string | False | `CommercialDeployment`  |  `CommercialDeployment`, `GCCModerateDeployment`  |  The deployment environment for Microsoft Teams channel calls. Possible values are `CommercialDeployment` and `GCCModerateDeployment`. Defaults to `CommercialDeployment`. | 
| **var.enable_calling** | bool | False | `False`  |  -  |  Specifies whether to enable Microsoft Teams channel calls. This defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **calling_web_hook** | string  | - | 
| **deployment_environment** | string  | - | 
| **enable_calling** | bool  | - | 
| **id** | string  | The ID of the Microsoft Teams Integration for a Bot Channel. | 