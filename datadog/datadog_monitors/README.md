# azurerm_datadog_monitors

Manages a datadog Monitor.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "datadog/datadog_monitors" 
}

inputs = {
   name = "name of datadog_monitors" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of datadog_monitors" 
   user = {
      example_user = {
         email = "..."   
      }
  
   }
 
   datadog_organization = {
      example_datadog_organization = {
         api_key = "..."   
         application_key = "..."   
      }
  
   }
 
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
| **var.name** | string |  The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **var.location** | string |  The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **var.sku_name** | string |  The name which should be used for this sku. | 
| **var.user** | block |  A `user` block. | 
| **var.datadog_organization** | block |  A `datadog_organization` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.identity** | block |  -  |  A `identity` block. | 
| **var.monitoring_enabled** | bool |  `True`  |  Is monitoring enabled? Defaults to `true`. | 
| **var.tags** | map |  -  |  A mapping of tags which should be assigned to the Datadog Monitor. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'. |

### `user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | Email of the user used by Datadog for contacting them if needed. Changing this forces a new Datadog Monitor to be created. |
| `phone_number` | int | No | - | Phone number of the user used by Datadog for contacting them if needed. Changing this forces a new resource to be created. |

### `datadog_organization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `api_key` | string | Yes | - | Api key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created. |
| `application_key` | string | Yes | - | Application key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created. |
| `enterprise_app_id` | string | No | - | The ID of the enterprise_app. Changing this forces a new resource to be created. |
| `linking_auth_code` | string | No | - | The auth code used to linking to an existing Datadog organization. Changing this forces a new Datadog Monitor to be created. |
| `linking_client_id` | string | No | - | The ID of the linking_client. Changing this forces a new Datadog Monitor to be created. |
| `redirect_uri` | string | No | - | The redirect uri for linking. Changing this forces a new Datadog Monitor to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Datadog Monitor. | 
| **identity** | block | No  | A `identity` block. | 
| **marketplace_subscription_status** | string | No  | Flag specifying the Marketplace Subscription Status of the resource. If payment is not made in time, the resource will go in Suspended state. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this Datadog Monitor. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this Datadog Monitor. | 

Additionally, all variables are provided as outputs.
