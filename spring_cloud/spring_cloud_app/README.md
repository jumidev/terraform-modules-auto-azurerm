# azurerm_spring_cloud_app

Manage an Azure Spring Cloud Application.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_app" 
}

inputs = {
   name = "name of spring_cloud_app" 
   resource_group_name = "${resource_group}" 
   service_name = "service_name of spring_cloud_app" 
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
| **var.name** | string | True | -  |  Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.service_name** | string | True | -  |  Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **var.addon_json** | string | False | -  |  A JSON object that contains the addon configurations of the Spring Cloud Service. | 
| **var.custom_persistent_disk** | block | False | -  |  A `custom_persistent_disk` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.is_public** | bool | False | `False`  |  Does the Spring Cloud Application have public endpoint? Defaults to `false`. | 
| **var.https_only** | bool | False | `False`  |  Is only HTTPS allowed? Defaults to `false`. | 
| **var.ingress_settings** | block | False | -  |  An `ingress_settings` block. | 
| **var.persistent_disk** | block | False | -  |  An `persistent_disk` block. | 
| **var.public_endpoint_enabled** | bool | False | -  |  Should the App in vnet injection instance exposes endpoint which could be accessed from Internet? | 
| **var.tls_enabled** | bool | False | `False`  |  Is End to End TLS Enabled? Defaults to `false`. | 

### `custom_persistent_disk` block structure

>`storage_name` (string): (REQUIRED) The name of the Spring Cloud Storage.
>`mount_path` (string): (REQUIRED) The mount path of the persistent disk.
>`share_name` (string): (REQUIRED) The share name of the Azure File share.
>`mount_options` (string): These are the mount options for a persistent disk.
>`read_only_enabled` (bool): Indicates whether the persistent disk is a readOnly one.

### `identity` block structure

>`type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Spring Cloud Application. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
>`identity_ids` (list): A list of User Assigned Managed Identity IDs to be assigned to this Spring Cloud Application.

### `ingress_settings` block structure

>`backend_protocol` (string): Specifies how ingress should communicate with this app backend service. Allowed values are 'GRPC' and 'Default'. Defaults to 'Default'.
>`read_timeout_in_seconds` (int): Specifies the ingress read time out in seconds. Defaults to '300'.
>`send_timeout_in_seconds` (int): Specifies the ingress send time out in seconds. Defaults to '60'.
>`session_affinity` (string): Specifies the type of the affinity, set this to 'Cookie' to enable session affinity. Allowed values are 'Cookie' and 'None'. Defaults to 'None'.
>`session_cookie_max_age` (string): Specifies the time in seconds until the cookie expires.

### `persistent_disk` block structure

>`size_in_gb` (string): (REQUIRED) Specifies the size of the persistent disk in GB. Possible values are between '0' and '50'.
>`mount_path` (string): Specifies the mount path of the persistent disk. Defaults to '/persistent'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Application. | 
| **fqdn** | string | No  | The Fully Qualified DNS Name of the Spring Application in the service. | 
| **url** | string | No  | The public endpoint of the Spring Cloud Application. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application. | 

Additionally, all variables are provided as outputs.
