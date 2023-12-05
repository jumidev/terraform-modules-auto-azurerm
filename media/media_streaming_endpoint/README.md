# azurerm_media_streaming_endpoint

Manages a Streaming Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "media/media_streaming_endpoint"   
}

inputs = {
   location = "${location}"   
   # media_services_account_name → set in tfstate_inputs
   name = "name of media_streaming_endpoint"   
   resource_group_name = "${resource_group}"   
   scale_units = "scale_units of media_streaming_endpoint"   
}

tfstate_inputs = {
   media_services_account_name = "path/to/media_services_account_component:name"   
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
| **location** | string |  -  |  The Azure Region where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **media_services_account_name** | string |  -  |  The Media Services account name. Changing this forces a new Streaming Endpoint to be created. | 
| **name** | string |  -  |  The name which should be used for this Streaming Endpoint maximum length is `24`. Changing this forces a new Streaming Endpoint to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **scale_units** | string |  `1`, `10`  |  The number of scale units. To create a Standard Streaming Endpoint set `0`. For Premium Streaming Endpoint valid values are between `1` and `10`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **access_control** | [block](#access_control-block-structure) |  A `access_control` block. | 
| **auto_start_enabled** | bool |  The flag indicates if the resource should be automatically started on creation. | 
| **cdn_enabled** | bool |  The CDN enabled flag. | 
| **cdn_profile** | string |  The CDN profile name. | 
| **cdn_provider** | string |  The CDN provider name. Supported value are `StandardVerizon`,`PremiumVerizon` and `StandardAkamai` | 
| **cross_site_access_policy** | [block](#cross_site_access_policy-block-structure) |  A `cross_site_access_policy` block. | 
| **custom_host_names** | string |  The custom host names of the streaming endpoint. | 
| **description** | string |  The streaming endpoint description. | 
| **max_cache_age_seconds** | int |  Max cache age in seconds. | 
| **tags** | map |  A mapping of tags which should be assigned to the Streaming Endpoint. | 

### `akamai_signature_header_authentication_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `base64_key` | string | No | - | Authentication key. |
| `expiration` | string | No | - | The expiration time of the authentication key. |
| `identifier` | string | No | - | Identifier of the key. |

### `ip_allow` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address` | string | No | - | The IP address to allow. |
| `name` | string | No | - | The friendly name for the IP address range. |
| `subnet_prefix_length` | string | No | - | The subnet mask prefix length (see CIDR notation). |

### `cross_site_access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_access_policy` | string | No | - | The content of 'clientaccesspolicy.xml' used by Silverlight. |
| `cross_domain_policy` | string | No | - | The content of 'crossdomain.xml' used by Silverlight. |

### `access_control` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `akamai_signature_header_authentication_key` | [block](#access_control-block-structure) | No | - | One or more 'akamai_signature_header_authentication_key' blocks. |
| `ip_allow` | [block](#access_control-block-structure) | No | - | A 'ip_allow' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Endpoint. | 
| **host_name** | string | No  | The host name of the Streaming Endpoint. | 
| **sku** | block | No  | A `sku` block defined as below. | 
| **name** | string | No  | The sku name of Streaming Endpoint. | 
| **capacity** | string | No  | The sku capacity of Streaming Endpoint. | 

Additionally, all variables are provided as outputs.
