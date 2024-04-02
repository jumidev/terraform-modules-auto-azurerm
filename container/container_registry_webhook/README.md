# azurerm_container_registry_webhook



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry_webhook"   
}

inputs = {
   name = "Specifies the name of the Container Registry Webhook..."   
   resource_group_name = "${resource_group}"   
   registry_name = "The Name of Container registry this Webhook belongs to..."   
   location = "${location}"   
   service_uri = "Specifies the service URI for the Webhook to post notifications..."   
   actions = "A list of actions that trigger the Webhook to post notifications..."   
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
| **name** | string |  -  |  Specifies the name of the Container Registry Webhook. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created. | 
| **registry_name** | string |  -  |  The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **service_uri** | string |  -  |  Specifies the service URI for the Webhook to post notifications. | 
| **actions** | list |  `push`, `delete`, `quarantine`, `chart_push`, `chart_delete`  |  A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: `push`, `delete`, `quarantine`, `chart_push`, `chart_delete` | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **status** | string |  `enabled`  |  `enabled`, `disabled`  |  Specifies if this Webhook triggers notifications or not. Valid values: `enabled` and `disabled`. Default is `enabled`. | 
| **scope** | string |  ``  |  `foo:*`, `foo`  |  Specifies the scope of repositories that can trigger an event. For example, `foo:*` means events for all tags under repository `foo`. `foo:bar` means events for 'foo:bar' only. `foo` is equivalent to `foo:latest`. Empty means all events. Defaults to `""`. | 
| **custom_headers** | string |  -  |  -  |  Custom headers that will be added to the webhook notifications request. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container Registry Webhook. | 

Additionally, all variables are provided as outputs.
