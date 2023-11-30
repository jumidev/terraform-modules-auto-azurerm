# azurerm_api_management

Manages an API Management Service.## Disclaimers-> When creating a new API Management resource in version 3.0 of the AzureRM Provider and later, please be aware that the AzureRM Provider will now clean up any sample APIs and Products created by the Azure API during the creation of the API Management resource.-> **Note:** Version 2.77 and later of the Azure Provider include a Feature Toggle which will purge an API Management resource on destroy, rather than the default soft-delete. See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information on Feature Toggles within Terraform.~> **Note:** It's possible to define Custom Domains both within [the `azurerm_api_management` resource](api_management.html) via the `hostname_configurations` block and by using [the `azurerm_api_management_custom_domain` resource](api_management_custom_domain.html). However it's not possible to use both methods to manage Custom Domains within an API Management Service, since there'll be conflicts.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management" 
}

inputs = {
   name = "name of api_management" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   publisher_name = "publisher_name of api_management" 
   publisher_email = "publisher_email of api_management" 
   sku_name = "sku_name of api_management" 
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
| **var.name** | string  -  |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.location** | string  -  |  The Azure location where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 
| **var.publisher_name** | string  -  |  The name of publisher/company. | 
| **var.publisher_email** | string  -  |  The email of publisher/company. | 
| **var.sku_name** | string  `Consumption`, `Developer`, `Basic`, `Standard`, `Premium`  |  `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `Standard` and `Premium`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`). | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.additional_location** | block  -  |  -  |  One or more `additional_location` blocks. | 
| **var.certificate** | list  -  |  -  |  One or more `certificate` blocks (up to 10) as defined below. | 
| **var.client_certificate_enabled** | bool  -  |  -  |  Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`. | 
| **var.delegation** | block  -  |  -  |  A `delegation` block. | 
| **var.gateway_disabled** | bool  -  |  -  |  Disable the gateway in main region? This is only supported when `additional_location` is set. | 
| **var.min_api_version** | string  -  |  -  |  The version which the control plane API calls to API Management service are limited with version equal to or newer than. | 
| **var.zones** | string  -  |  -  |  Specifies a list of Availability Zones in which this API Management service should be located. Changing this forces a new API Management service to be created. | 
| **var.identity** | block  -  |  -  |  An `identity` block. | 
| **var.hostname_configuration** | block  -  |  -  |  A `hostname_configuration` block. | 
| **var.notification_sender_email** | string  -  |  -  |  Email address from which the notification will be sent. | 
| **var.policy** | block  -  |  -  |  A `policy` block. | 
| **var.protocols** | block  -  |  -  |  A `protocols` block. | 
| **var.security** | block  -  |  -  |  A `security` block. | 
| **var.sign_in** | block  -  |  -  |  A `sign_in` block. | 
| **var.sign_up** | block  -  |  -  |  A `sign_up` block. | 
| **var.tenant_access** | block  -  |  -  |  A `tenant_access` block. | 
| **var.public_ip_address_id** | string  -  |  -  |  ID of a standard SKU IPv4 Public IP. | 
| **var.public_network_access_enabled** | bool  `True`  |  -  |  Is public access to the service allowed? Defaults to `true`. | 
| **var.virtual_network_type** | string  `None`  |  `None`, `External`, `Internal`  |  The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`. | 
| **var.virtual_network_configuration** | block  -  |  -  |  A `virtual_network_configuration` block. Required when `virtual_network_type` is `External` or `Internal`. | 
| **var.tags** | map  -  |  -  |  A mapping of tags assigned to the resource. | 

### `additional_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `location` | string | Yes | - | The name of the Azure Region in which the API Management Service should be expanded to. |
| `capacity` | int | No | - | The number of compute units in this region. Defaults to the capacity of the main region. |
| `zones` | list | No | - | A list of availability zones. Changing this forces a new resource to be created. |
| `public_ip_address_id` | string | No | - | ID of a standard SKU IPv4 Public IP. |
| `virtual_network_configuration` | block | No | - | A 'virtual_network_configuration' block. Required when 'virtual_network_type' is 'External' or 'Internal'. |
| `gateway_disabled` | bool | No | - | Only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in this additional location. |

### `delegation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subscriptions_enabled` | bool | No | False | Should subscription requests be delegated to an external url? Defaults to 'false'. |
| `user_registration_enabled` | bool | No | False | Should user registration requests be delegated to an external url? Defaults to 'false'. |
| `url` | string | No | - | The delegation URL. |
| `validation_key` | string | No | - | A base64-encoded validation key to validate, that a request is coming from Azure API Management. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this API Management Service. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this API Management Service. |

### `hostname_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `management` | list | No | - | One or more 'management' blocks. |
| `portal` | list | No | - | One or more 'portal' blocks. |
| `developer_portal` | list | No | - | One or more 'developer_portal' blocks. |
| `proxy` | list | No | - | One or more 'proxy' blocks. |
| `scm` | list | No | - | One or more 'scm' blocks. |

### `policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `xml_content` | string | No | - | The XML Content for this Policy. |
| `xml_link` | string | No | - | A link to an API Management Policy XML Document, which must be publicly available. |

### `protocols` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enable_http2` | bool | No | False | Should HTTP/2 be supported by the API Management Service? Defaults to 'false'. |

### `security` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enable_backend_ssl30` | bool | No | False | Should SSL 3.0 be enabled on the backend of the gateway? Defaults to 'false'. |
| `enable_backend_tls10` | bool | No | False | Should TLS 1.0 be enabled on the backend of the gateway? Defaults to 'false'. |
| `enable_backend_tls11` | bool | No | False | Should TLS 1.1 be enabled on the backend of the gateway? Defaults to 'false'. |
| `enable_frontend_ssl30` | bool | No | False | Should SSL 3.0 be enabled on the frontend of the gateway? Defaults to 'false'. |
| `enable_frontend_tls10` | bool | No | False | Should TLS 1.0 be enabled on the frontend of the gateway? Defaults to 'false'. |
| `enable_frontend_tls11` | bool | No | False | Should TLS 1.1 be enabled on the frontend of the gateway? Defaults to 'false'. |
| `tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled` | bool | No | False | Should the 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA' cipher be enabled? Defaults to 'false'. |
| `tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled` | bool | No | False | Should the 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA' cipher be enabled? Defaults to 'false'. |
| `tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled` | bool | No | False | Should the 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA' cipher be enabled? Defaults to 'false'. |
| `tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled` | bool | No | False | Should the 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA' cipher be enabled? Defaults to 'false'. |
| `tls_rsa_with_aes128_cbc_sha256_ciphers_enabled` | bool | No | False | Should the 'TLS_RSA_WITH_AES_128_CBC_SHA256' cipher be enabled? Defaults to 'false'. |
| `tls_rsa_with_aes128_cbc_sha_ciphers_enabled` | bool | No | False | Should the 'TLS_RSA_WITH_AES_128_CBC_SHA' cipher be enabled? Defaults to 'false'. |
| `tls_rsa_with_aes128_gcm_sha256_ciphers_enabled` | bool | No | False | Should the 'TLS_RSA_WITH_AES_128_GCM_SHA256' cipher be enabled? Defaults to 'false'. |
| `tls_rsa_with_aes256_gcm_sha384_ciphers_enabled` | bool | No | False | Should the 'TLS_RSA_WITH_AES_256_GCM_SHA384' cipher be enabled? Defaults to 'false'. |
| `tls_rsa_with_aes256_cbc_sha256_ciphers_enabled` | bool | No | False | Should the 'TLS_RSA_WITH_AES_256_CBC_SHA256' cipher be enabled? Defaults to 'false'. |
| `tls_rsa_with_aes256_cbc_sha_ciphers_enabled` | bool | No | False | Should the 'TLS_RSA_WITH_AES_256_CBC_SHA' cipher be enabled? Defaults to 'false'. |
| `triple_des_ciphers_enabled` | bool | No | - | Should the 'TLS_RSA_WITH_3DES_EDE_CBC_SHA' cipher be enabled for alL TLS versions (1.0, 1.1 and 1.2)? |

### `sign_in` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should anonymous users be redirected to the sign in page? |

### `sign_up` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Can users sign up on the development portal? |
| `terms_of_service` | block | Yes | - | A 'terms_of_service' block. |

### `tenant_access` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the access to the management API be enabled? |

### `virtual_network_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The id of the subnet that will be used for the API Management. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Service. | 
| **additional_location** | string | No  | Zero or more `additional_location` blocks. | 
| **gateway_url** | string | No  | The URL of the Gateway for the API Management Service. | 
| **gateway_regional_url** | string | No  | The URL of the Regional Gateway for the API Management Service in the specified region. | 
| **identity** | block | No  | An `identity` block. | 
| **hostname_configuration** | block | No  | A `hostname_configuration` block. | 
| **management_api_url** | string | No  | The URL for the Management API associated with this API Management service. | 
| **portal_url** | string | No  | The URL for the Publisher Portal associated with this API Management service. | 
| **developer_portal_url** | string | No  | The URL for the Developer Portal associated with this API Management service. | 
| **public_ip_addresses** | string | No  | Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU. | 
| **private_ip_addresses** | string | No  | The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode. | 
| **scm_url** | string | No  | The URL for the SCM (Source Code Management) Endpoint associated with this API Management service. | 
| **tenant_access** | string | No  | The `tenant_access` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The identifier for the tenant access information contract. | 
| **primary_key** | string | No  | Primary access key for the tenant access information contract. | 
| **secondary_key** | string | No  | Secondary access key for the tenant access information contract. | 
| **expiry** | string | No  | The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`. | 
| **thumbprint** | string | No  | The thumbprint of the certificate. | 
| **subject** | string | No  | The subject of the certificate. | 
| **proxy** | block | No  | A `proxy` block. | 
| **certificate_source** | string | No  | The source of the certificate. | 
| **certificate_status** | string | No  | The status of the certificate. | 

Additionally, all variables are provided as outputs.
