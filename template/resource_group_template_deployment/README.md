# azurerm_resource_group_template_deployment

Manages a Resource Group Template Deployment.~> **Note:** This resource will automatically attempt to delete resources deployed by the ARM Template when it is deleted. This behavior can be disabled in the provider `features` block by setting the `delete_nested_items_during_deletion` field to `false` within the `template_deployment` block.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "template/resource_group_template_deployment" 
}

inputs = {
   deployment_mode = "deployment_mode of resource_group_template_deployment" 
   name = "name of resource_group_template_deployment" 
   resource_group_name = "${resource_group}" 
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
| **deployment_mode** | string |  `Complete`, `Incremental`  |  The Deployment Mode for this Resource Group Template Deployment. Possible values are `Complete` (where resources in the Resource Group not specified in the ARM Template will be destroyed) and `Incremental` (where resources are additive only). | 
| **name** | string |  -  |  The name which should be used for this Resource Group Template Deployment. Changing this forces a new Resource Group Template Deployment to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Resource Group Template Deployment should exist. Changing this forces a new Resource Group Template Deployment to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **debug_level** | string |  `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  |  The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **template_content** | string |  -  |  The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`. | 
| **template_spec_version_id** | string |  -  |  The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`. | 
| **parameters_content** | string |  -  |  The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Resource Group Template Deployment. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Group Template Deployment. | 
| **output_content** | string | No  | The JSON Content of the Outputs of the ARM Template Deployment. | 

Additionally, all variables are provided as outputs.
