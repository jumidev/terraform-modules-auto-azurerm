# azurerm_spring_cloud_app

Manage an Azure Spring Cloud Application.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_app"   
}

inputs = {
   name = "Specifies the name of the Spring Cloud Application"   
   resource_group_name = "${resource_group}"   
   service_name = "Specifies the name of the Spring Cloud Service resource..."   
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
| **name** | string |  Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **service_name** | string |  Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **addon_json** | string |  -  |  A JSON object that contains the addon configurations of the Spring Cloud Service. | 
| **custom_persistent_disk** | [block](#custom_persistent_disk-block-structure) |  -  |  A `custom_persistent_disk` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **is_public** | bool |  `False`  |  Does the Spring Cloud Application have public endpoint? Defaults to `false`. | 
| **https_only** | bool |  `False`  |  Is only HTTPS allowed? Defaults to `false`. | 
| **ingress_settings** | [block](#ingress_settings-block-structure) |  -  |  An `ingress_settings` block. | 
| **persistent_disk** | [block](#persistent_disk-block-structure) |  -  |  An `persistent_disk` block. | 
| **public_endpoint_enabled** | bool |  -  |  Should the App in vnet injection instance exposes endpoint which could be accessed from Internet? | 
| **tls_enabled** | bool |  `False`  |  Is End to End TLS Enabled? Defaults to `false`. | 

### `ingress_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `backend_protocol` | string | No | Default | Specifies how ingress should communicate with this app backend service. Allowed values are 'GRPC' and 'Default'. Defaults to 'Default'. |
| `read_timeout_in_seconds` | string | No | 300 | Specifies the ingress read time out in seconds. Defaults to '300'. |
| `send_timeout_in_seconds` | string | No | 60 | Specifies the ingress send time out in seconds. Defaults to '60'. |
| `session_affinity` | string | No | None | Specifies the type of the affinity, set this to 'Cookie' to enable session affinity. Allowed values are 'Cookie' and 'None'. Defaults to 'None'. |
| `session_cookie_max_age` | string | No | - | Specifies the time in seconds until the cookie expires. |

### `persistent_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `size_in_gb` | string | Yes | - | Specifies the size of the persistent disk in GB. Possible values are between '0' and '50'. |
| `mount_path` | string | No | /persistent | Specifies the mount path of the persistent disk. Defaults to '/persistent'. |

### `custom_persistent_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_name` | string | Yes | - | The name of the Spring Cloud Storage. |
| `mount_path` | string | Yes | - | The mount path of the persistent disk. |
| `share_name` | string | Yes | - | The share name of the Azure File share. |
| `mount_options` | string | No | - | These are the mount options for a persistent disk. |
| `read_only_enabled` | bool | No | - | Indicates whether the persistent disk is a readOnly one. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Spring Cloud Application. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Spring Cloud Application. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Application. | 
| **fqdn** | string | No  | The Fully Qualified DNS Name of the Spring Application in the service. | 
| **url** | string | No  | The public endpoint of the Spring Cloud Application. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application. | 

Additionally, all variables are provided as outputs.
