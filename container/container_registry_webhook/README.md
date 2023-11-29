# azurerm_container_registry_webhook

Manages an Azure Container Registry Webhook.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Container Registry Webhook. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created. | 
| **var.registry_name** | string | True | -  |  -  |  The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.service_uri** | string | True | -  |  -  |  Specifies the service URI for the Webhook to post notifications. | 
| **var.actions** | string | True | -  |  `push`, `delete`, `quarantine`, `chart_push`, `chart_delete`  |  A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: `push`, `delete`, `quarantine`, `chart_push`, `chart_delete` | 
| **var.status** | string | False | `enabled`  |  `enabled`, `disabled`  |  Specifies if this Webhook triggers notifications or not. Valid values: `enabled` and `disabled`. Default is `enabled`. | 
| **var.scope** | string | False | ``  |  -  |  Specifies the scope of repositories that can trigger an event. For example, `foo:*` means events for all tags under repository `foo`. `foo:bar` means events for 'foo:bar' only. `foo` is equivalent to `foo:latest`. Empty means all events. Defaults to `""`. | 
| **var.custom_headers** | string | False | -  |  -  |  Custom headers that will be added to the webhook notifications request. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **registry_name** | string  | - | 
| **location** | string  | - | 
| **service_uri** | string  | - | 
| **actions** | string  | - | 
| **status** | string  | - | 
| **scope** | string  | - | 
| **custom_headers** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Container Registry Webhook. | 