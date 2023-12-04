# azurerm_management_group_template_deployment

Manages a Template Deployment at a Management Group Scope.~> **Note:** Deleting a Deployment at the Management Group Scope will not delete any resources created by the deployment.~> **Note:** Deployments to a Management Group are always Incrementally applied. Existing resources that are not part of the template will not be removed.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "template/management_group_template_deployment" 
}

inputs = {
   location = "${location}" 
   # management_group_id → set in tfstate_inputs
   name = "name of management_group_template_deployment" 
}

tfstate_inputs = {
   management_group_id = "path/to/management_group_component:id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **location** | string |  The Azure Region where the Template should exist. Changing this forces a new Template to be created. | 
| **management_group_id** | string |  The ID of the Management Group to apply the Deployment Template to. Changing this forces a new resource to be created. | 
| **name** | string |  The name which should be used for this Template Deployment. Changing this forces a new Template Deployment to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **debug_level** | string |  `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  |  The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **parameters_content** | string |  -  |  The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **template_content** | string |  -  |  The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`. | 
| **template_spec_version_id** | string |  -  |  The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Template. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Management Group Template Deployment. | 
| **output_content** | string | No  | The JSON Content of the Outputs of the ARM Template Deployment. | 

Additionally, all variables are provided as outputs.
