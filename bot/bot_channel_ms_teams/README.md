# azurerm_bot_channel_ms_teams

Manages a MS Teams integration for a Bot Channel~> **Note** A bot can only have a single MS Teams Channel associated with it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_channel_ms_teams" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_channel_ms_teams" 
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
| **var.resource_group_name** | string  The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **var.location** | string  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.calling_web_hook** | string  -  |  -  |  Specifies the webhook for Microsoft Teams channel calls. | 
| **var.deployment_environment** | string  `CommercialDeployment`  |  `CommercialDeployment`, `GCCModerateDeployment`  |  The deployment environment for Microsoft Teams channel calls. Possible values are `CommercialDeployment` and `GCCModerateDeployment`. Defaults to `CommercialDeployment`. | 
| **var.enable_calling** | bool  `False`  |  -  |  Specifies whether to enable Microsoft Teams channel calls. This defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Microsoft Teams Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
