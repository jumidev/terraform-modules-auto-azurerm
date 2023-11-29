# azurerm_cdn_endpoint

A CDN Endpoint is the entity within a CDN Profile containing configuration information regarding caching behaviours and origins. The CDN Endpoint is exposed using the URL format `<endpointname>.azureedge.net`.!> **Be Aware:** Azure is rolling out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. [More information is available in this GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) - however unfortunately this may necessitate a breaking change to the CDN and FrontDoor resources, more information will be posted [in the GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) as the necessary changes are identified.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the CDN Endpoint. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the CDN Endpoint. Changing this forces a new resource to be created. | 
| **profile_name** | string | True | -  |  -  | The CDN Profile to which to attach the CDN Endpoint. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **is_http_allowed** | bool | False | `True`  |  -  | Specifies if http allowed. Defaults to `true`. | 
| **is_https_allowed** | bool | False | `True`  |  -  | Specifies if https allowed. Defaults to `true`. | 
| **content_types_to_compress** | string | False | -  |  -  | An array of strings that indicates a content types on which compression will be applied. The value for the elements should be MIME types. | 

