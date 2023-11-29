# azurerm_api_management

Manages an API Management Service.## Disclaimers-> When creating a new API Management resource in version 3.0 of the AzureRM Provider and later, please be aware that the AzureRM Provider will now clean up any sample APIs and Products created by the Azure API during the creation of the API Management resource.-> **Note:** Version 2.77 and later of the Azure Provider include a Feature Toggle which will purge an API Management resource on destroy, rather than the default soft-delete. See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information on Feature Toggles within Terraform.~> **Note:** It's possible to define Custom Domains both within [the `azurerm_api_management` resource](api_management.html) via the `hostname_configurations` block and by using [the `azurerm_api_management_custom_domain` resource](api_management_custom_domain.html). However it's not possible to use both methods to manage Custom Domains within an API Management Service, since there'll be conflicts.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where the API Management Service exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 
| **publisher_name** | string | True | -  |  -  | The name of publisher/company. | 
| **publisher_email** | string | True | -  |  -  | The email of publisher/company. | 
| **sku_name** | string | True | -  |  `Consumption`, `Developer`, `Basic`, `Standard`, `Premium`  | `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `Standard` and `Premium`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`). | 
| **additional_location** | block | False | -  |  -  | One or more `additional_location` blocks. | 
| **certificate** | list | False | -  |  -  | One or more `certificate` blocks (up to 10) as defined below. | 
| **client_certificate_enabled** | bool | False | -  |  -  | Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`. | 
| **delegation** | block | False | -  |  -  | A `delegation` block. | 
| **gateway_disabled** | bool | False | -  |  -  | Disable the gateway in main region? This is only supported when `additional_location` is set. | 
| **min_api_version** | string | False | -  |  -  | The version which the control plane API calls to API Management service are limited with version equal to or newer than. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this API Management service should be located. Changing this forces a new API Management service to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **hostname_configuration** | block | False | -  |  -  | A `hostname_configuration` block. | 
| **notification_sender_email** | string | False | -  |  -  | Email address from which the notification will be sent. | 
| **policy** | block | False | -  |  -  | A `policy` block. | 
| **protocols** | block | False | -  |  -  | A `protocols` block. | 
| **security** | block | False | -  |  -  | A `security` block. | 
| **sign_in** | block | False | -  |  -  | A `sign_in` block. | 
| **sign_up** | block | False | -  |  -  | A `sign_up` block. | 
| **tenant_access** | block | False | -  |  -  | A `tenant_access` block. | 
| **public_ip_address_id** | string | False | -  |  -  | ID of a standard SKU IPv4 Public IP. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Is public access to the service allowed? Defaults to `true`. | 
| **virtual_network_type** | string | False | `None`  |  `None`, `External`, `Internal`  | The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`. | 
| **virtual_network_configuration** | block | False | -  |  -  | A `virtual_network_configuration` block. Required when `virtual_network_type` is `External` or `Internal`. | 
| **tags** | map | False | -  |  -  | A mapping of tags assigned to the resource. | 

