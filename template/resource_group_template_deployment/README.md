# azurerm_resource_group_template_deployment

Manages a Resource Group Template Deployment.~> **Note:** This resource will automatically attempt to delete resources deployed by the ARM Template when it is deleted. This behavior can be disabled in the provider `features` block by setting the `delete_nested_items_during_deletion` field to `false` within the `template_deployment` block.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.deployment_mode** | string | True | -  |  `Complete`, `Incremental`  | The Deployment Mode for this Resource Group Template Deployment. Possible values are `Complete` (where resources in the Resource Group not specified in the ARM Template will be destroyed) and `Incremental` (where resources are additive only). | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Resource Group Template Deployment. Changing this forces a new Resource Group Template Deployment to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Resource Group Template Deployment should exist. Changing this forces a new Resource Group Template Deployment to be created. | 
| **var.debug_level** | string | False | -  |  `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  | The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **var.template_content** | string | False | -  |  -  | The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`. | 
| **var.template_spec_version_id** | string | False | -  |  -  | The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`. | 
| **var.parameters_content** | string | False | -  |  -  | The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Resource Group Template Deployment. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **deployment_mode** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **debug_level** | string  | - | 
| **template_content** | string  | - | 
| **template_spec_version_id** | string  | - | 
| **parameters_content** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Resource Group Template Deployment. | 
| **output_content** | string  | The JSON Content of the Outputs of the ARM Template Deployment. | 