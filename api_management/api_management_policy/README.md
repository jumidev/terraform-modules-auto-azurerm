# azurerm_api_management_policy

Manages a API Management service Policy.~> **NOTE:** This resource will, upon creation, **overwrite any existing policy in the API Management service**, as there is no feasible way to test whether the policy has been modified from the default. Similarly, when this resource is destroyed, the API Management service will revert to its default policy.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.api_management_id** | string | True | -  |  -  | The ID of the API Management service. Changing this forces a new API Management service Policy to be created. | 
| **var.xml_content** | string | False | -  |  -  | The XML Content for this Policy as a string. An XML file can be used here with Terraform's [file function](https://www.terraform.io/docs/configuration/functions/file.html) that is similar to Microsoft's `PolicyFilePath` option. | 
| **var.xml_link** | string | False | -  |  -  | A link to a Policy XML Document, which must be publicly available. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **xml_content** | string  | - | 
| **xml_link** | string  | - | 
| **id** | string  | The ID of the API Management service Policy. | 