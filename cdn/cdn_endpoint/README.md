# azurerm_cdn_endpoint

A CDN Endpoint is the entity within a CDN Profile containing configuration information regarding caching behaviours and origins. The CDN Endpoint is exposed using the URL format `<endpointname>.azureedge.net`.!> **Be Aware:** Azure is rolling out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. [More information is available in this GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) - however unfortunately this may necessitate a breaking change to the CDN and FrontDoor resources, more information will be posted [in the GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) as the necessary changes are identified.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_endpoint" 
}

inputs = {
   name = "name of cdn_endpoint" 
   resource_group_name = "${resource_group}" 
   profile_name = "profile_name of cdn_endpoint" 
   location = "${location}" 
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
| **var.name** | string | True | -  |  Specifies the name of the CDN Endpoint. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the CDN Endpoint. Changing this forces a new resource to be created. | 
| **var.profile_name** | string | True | -  |  The CDN Profile to which to attach the CDN Endpoint. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.is_http_allowed** | bool | False | `True`  |  Specifies if http allowed. Defaults to `true`. | 
| **var.is_https_allowed** | bool | False | `True`  |  Specifies if https allowed. Defaults to `true`. | 
| **var.content_types_to_compress** | string | False | -  |  An array of strings that indicates a content types on which compression will be applied. The value for the elements should be MIME types. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CDN Endpoint. | 
| **fqdn** | string | No  | The Fully Qualified Domain Name of the CDN Endpoint. | 

Additionally, all variables are provided as outputs.
