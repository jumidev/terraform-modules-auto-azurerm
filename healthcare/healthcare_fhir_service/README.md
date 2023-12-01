# azurerm_healthcare_fhir_service

Manages a Healthcare FHIR (Fast Healthcare Interoperability Resources) Service

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "healthcare/healthcare_fhir_service" 
}

inputs = {
   name = "name of healthcare_fhir_service" 
   resource_group_name = "${resource_group}" 
   workspace_id = "workspace_id of healthcare_fhir_service" 
   location = "${location}" 
   authentication = {
      example_authentication = {
         authority = "..."   
         audience = "..."   
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
| **name** | string |  Specifies the name of the Healthcare FHIR Service. Changing this forces a new Healthcare FHIR Service to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created. | 
| **workspace_id** | string |  Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created. | 
| **location** | string |  Specifies the Azure Region where the Healthcare FHIR Service should be created. Changing this forces a new Healthcare FHIR Service to be created. | 
| **authentication** | [block](#authentication-block-structure) |  An `authentication` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **kind** | string |  `fhir-R4`  |  `fhir-Stu3`, `fhir-R4`  |  Specifies the kind of the Healthcare FHIR Service. Possible values are: `fhir-Stu3` and `fhir-R4`. Defaults to `fhir-R4`. Changing this forces a new Healthcare FHIR Service to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **access_policy_object_ids** | list |  -  |  -  |  A list of the access policies of the service instance. | 
| **cors** | [block](#cors-block-structure) |  -  |  -  |  A `cors` block. | 
| **container_registry_login_server_url** | list |  -  |  -  |  A list of azure container registry settings used for convert data operation of the service instance. | 
| **oci_artifact** | [block](#oci_artifact-block-structure) |  -  |  -  |  [A list](/docs/configuration/attr-as-blocks.html) of `oci_artifact` objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export). | 
| **configuration_export_storage_account_name** | string |  -  |  -  |  Specifies the name of the storage account which the operation configuration information is exported to. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the Healthcare FHIR Service. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of managed identity to assign. Possible values are 'UserAssigned' and 'SystemAssigned'. |
| `identity_ids` | list | No | - | A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when 'type' is set to 'UserAssigned'. |

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `authority` | string | Yes | - | The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform. Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}. |
| `audience` | string | Yes | - | The intended audience to receive authentication tokens for the service. |
| `smart_proxy_enabled` | bool | No | - | Whether smart proxy is enabled. |

### `oci_artifact` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `login_server` | string | Yes | - | An Azure container registry used for export operations of the service instance. |
| `image_name` | string | No | - | An image within Azure container registry used for export operations of the service instance. |
| `digest` | string | No | - | A digest of an image within Azure container registry used for export operations of the service instance to narrow the artifacts down. |

### `cors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_origins` | string | Yes | - | A set of origins to be allowed via CORS. |
| `allowed_headers` | string | Yes | - | A set of headers to be allowed via CORS. |
| `allowed_methods` | string | Yes | - | The methods to be allowed via CORS. Possible values are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PATCH' and 'PUT'. |
| `max_age_in_seconds` | int | No | - | The max age to be allowed via CORS. |
| `credentials_allowed` | bool | No | - | If credentials are allowed via CORS. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Healthcare FHIR Service. | 
| **public_network_access_enabled** | bool | No  | Whether public networks access is enabled. | 

Additionally, all variables are provided as outputs.
