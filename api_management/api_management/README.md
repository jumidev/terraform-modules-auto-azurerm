# azurerm_api_management

Manages an API Management Service.## Disclaimers-> When creating a new API Management resource in version 3.0 of the AzureRM Provider and later, please be aware that the AzureRM Provider will now clean up any sample APIs and Products created by the Azure API during the creation of the API Management resource.-> **Note:** Version 2.77 and later of the Azure Provider include a Feature Toggle which will purge an API Management resource on destroy, rather than the default soft-delete. See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information on Feature Toggles within Terraform.~> **Note:** It's possible to define Custom Domains both within [the `azurerm_api_management` resource](api_management.html) via the `hostname_configurations` block and by using [the `azurerm_api_management_custom_domain` resource](api_management_custom_domain.html). However it's not possible to use both methods to manage Custom Domains within an API Management Service, since there'll be conflicts.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure location where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 
| **var.publisher_name** | string | True | -  |  -  |  The name of publisher/company. | 
| **var.publisher_email** | string | True | -  |  -  |  The email of publisher/company. | 
| **var.sku_name** | string | True | -  |  `Consumption`, `Developer`, `Basic`, `Standard`, `Premium`  |  `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `Standard` and `Premium`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`). | 
| **var.additional_location** | block | False | -  |  -  |  One or more `additional_location` blocks. | 
| **var.certificate** | list | False | -  |  -  |  One or more `certificate` blocks (up to 10) as defined below. | 
| **var.client_certificate_enabled** | bool | False | -  |  -  |  Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`. | 
| **var.delegation** | block | False | -  |  -  |  A `delegation` block. | 
| **var.gateway_disabled** | bool | False | -  |  -  |  Disable the gateway in main region? This is only supported when `additional_location` is set. | 
| **var.min_api_version** | string | False | -  |  -  |  The version which the control plane API calls to API Management service are limited with version equal to or newer than. | 
| **var.zones** | string | False | -  |  -  |  Specifies a list of Availability Zones in which this API Management service should be located. Changing this forces a new API Management service to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.hostname_configuration** | block | False | -  |  -  |  A `hostname_configuration` block. | 
| **var.notification_sender_email** | string | False | -  |  -  |  Email address from which the notification will be sent. | 
| **var.policy** | block | False | -  |  -  |  A `policy` block. | 
| **var.protocols** | block | False | -  |  -  |  A `protocols` block. | 
| **var.security** | block | False | -  |  -  |  A `security` block. | 
| **var.sign_in** | block | False | -  |  -  |  A `sign_in` block. | 
| **var.sign_up** | block | False | -  |  -  |  A `sign_up` block. | 
| **var.tenant_access** | block | False | -  |  -  |  A `tenant_access` block. | 
| **var.public_ip_address_id** | string | False | -  |  -  |  ID of a standard SKU IPv4 Public IP. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Is public access to the service allowed? Defaults to `true`. | 
| **var.virtual_network_type** | string | False | `None`  |  `None`, `External`, `Internal`  |  The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`. | 
| **var.virtual_network_configuration** | block | False | -  |  -  |  A `virtual_network_configuration` block. Required when `virtual_network_type` is `External` or `Internal`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags assigned to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **publisher_name** | string  | - | 
| **publisher_email** | string  | - | 
| **sku_name** | string  | - | 
| **additional_location** | block  | - | 
| **certificate** | list  | - | 
| **client_certificate_enabled** | bool  | - | 
| **delegation** | block  | - | 
| **gateway_disabled** | bool  | - | 
| **min_api_version** | string  | - | 
| **zones** | string  | - | 
| **identity** | block  | - | 
| **hostname_configuration** | block  | - | 
| **notification_sender_email** | string  | - | 
| **policy** | block  | - | 
| **protocols** | block  | - | 
| **security** | block  | - | 
| **sign_in** | block  | - | 
| **sign_up** | block  | - | 
| **tenant_access** | block  | - | 
| **public_ip_address_id** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **virtual_network_type** | string  | - | 
| **virtual_network_configuration** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the API Management Service. | 
| **additional_location** | string  | Zero or more `additional_location` blocks. | 
| **gateway_url** | string  | The URL of the Gateway for the API Management Service. | 
| **gateway_regional_url** | string  | The URL of the Regional Gateway for the API Management Service in the specified region. | 
| **identity** | block  | An `identity` block. | 
| **hostname_configuration** | block  | A `hostname_configuration` block. | 
| **management_api_url** | string  | The URL for the Management API associated with this API Management service. | 
| **portal_url** | string  | The URL for the Publisher Portal associated with this API Management service. | 
| **developer_portal_url** | string  | The URL for the Developer Portal associated with this API Management service. | 
| **public_ip_addresses** | string  | Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU. | 
| **private_ip_addresses** | string  | The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode. | 
| **scm_url** | string  | The URL for the SCM (Source Code Management) Endpoint associated with this API Management service. | 
| **tenant_access** | string  | The `tenant_access` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The identifier for the tenant access information contract. | 
| **primary_key** | string  | Primary access key for the tenant access information contract. | 
| **secondary_key** | string  | Secondary access key for the tenant access information contract. | 
| **expiry** | string  | The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`. | 
| **thumbprint** | string  | The thumbprint of the certificate. | 
| **subject** | string  | The subject of the certificate. | 
| **proxy** | block  | A `proxy` block. | 
| **certificate_source** | string  | The source of the certificate. | 
| **certificate_status** | string  | The status of the certificate. | 

## Example minimal hclt

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