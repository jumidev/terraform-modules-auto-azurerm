# azurerm_spring_cloud_api_portal

Manages a Spring Cloud API Portal.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_api_portal" 
}

inputs = {
   name = "name of spring_cloud_api_portal" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_api_portal" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`. | 
| **var.spring_cloud_service_id** | string | True | -  |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created. | 
| **var.gateway_ids** | string | False | -  |  Specifies a list of Spring Cloud Gateway. | 
| **var.https_only_enabled** | bool | False | -  |  is only https is allowed? | 
| **var.instance_count** | int | False | `1`  |  Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.public_network_access_enabled** | bool | False | -  |  Is the public network access enabled? | 
| **var.sso** | block | False | -  |  A `sso` block. | 
| `sso` block structure: || 
|   client_id (string): The public identifier for the application. ||
|   client_secret (string): The secret known only to the application and the authorization server. ||
|   issuer_uri (string): The URI of Issuer Identifier. ||
|   scope (string): It defines the specific actions applications can be allowed to do on a user's behalf. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud API Portal. | 
| **url** | string | No  | TODO. | 

Additionally, all variables are provided as outputs.
