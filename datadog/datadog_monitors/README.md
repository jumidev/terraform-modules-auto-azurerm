# azurerm_datadog_monitors

Manages a datadog Monitor.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "datadog/datadog_monitors"   
}

inputs = {
   name = "The name of the user that will be associated with the Datadog Monitor..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "The name which should be used for this sku"   
   user = {
      name = "..."      
      email = "..."      
   }
   
   datadog_organization = {
      api_key = "..."      
      application_key = "..."      
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
| **name** | string |  The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **location** | string |  The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created. | 
| **sku_name** | string |  The name which should be used for this sku. | 
| **user** | [block](#user-block-structure) |  A `user` block. | 
| **datadog_organization** | [block](#datadog_organization-block-structure) |  A `datadog_organization` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **identity** | [block](#identity-block-structure) |  -  |  A `identity` block. | 
| **monitoring_enabled** | bool |  `True`  |  Is monitoring enabled? Defaults to `true`. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Datadog Monitor. | 

### `user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this user_info. Changing this forces a new resource to be created. |
| `email` | string | Yes | - | Email of the user used by Datadog for contacting them if needed. Changing this forces a new Datadog Monitor to be created. |
| `phone_number` | int | No | - | Phone number of the user used by Datadog for contacting them if needed. Changing this forces a new resource to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'. |

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
