# azurerm_spring_cloud_dev_tool_portal

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Dev Tool Portal.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_dev_tool_portal" 
}

inputs = {
   name = "name of spring_cloud_dev_tool_portal" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_dev_tool_portal" 
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
| **var.name** | string |  The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 
| **var.spring_cloud_service_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.application_accelerator_enabled** | bool |  Should the Accelerator plugin be enabled? | 
| **var.application_live_view_enabled** | bool |  Should the Application Live View be enabled? | 
| **var.public_network_access_enabled** | bool |  Is public network access enabled? | 
| **var.sso** | block |  A `sso` block. | 

### `sso` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | No | - | Specifies the public identifier for the application. |
| `client_secret` | string | No | - | Specifies the secret known only to the application and the authorization server. |
| `metadata_url` | string | No | - | Specifies the URI of a JSON file with generic OIDC provider configuration. |
| `scope` | string | No | - | Specifies a list of specific actions applications can be allowed to do on a user's behalf. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Dev Tool Portal. | 

Additionally, all variables are provided as outputs.
