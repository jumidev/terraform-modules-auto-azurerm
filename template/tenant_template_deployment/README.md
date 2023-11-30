# azurerm_tenant_template_deployment

Manages a Template Deployment at the Tenant Scope.~> **Note:** Deleting a Deployment at the Tenant Scope will not delete any resources created by the deployment.~> **Note:** Deployments to a Tenant are always Incrementally applied. Existing resources that are not part of the template will not be removed.~> **Note:** Tenant Template Deployments are always targeted at the Tenant in which the current User, Managed Identity, or Service Principal being used by Terraform is homed.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.location** | string | True | -  |  The Azure Region where the Template should exist. Changing this forces a new Template to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Template. Changing this forces a new Template to be created. | 
| **var.debug_level** | string | False | `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  |  The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **var.parameters_content** | string | False | -  |  The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **var.template_content** | string | False | -  |  The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`. | 
| **var.template_spec_version_id** | string | False | -  |  The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Template. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **debug_level** | string  | - | 
| **parameters_content** | string  | - | 
| **template_content** | string  | - | 
| **template_spec_version_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Tenant Template Deployment. | 
| **output_content** | string  | The JSON Content of the Outputs of the ARM Template Deployment. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "template/tenant_template_deployment" 
}

inputs = {
   location = "${location}" 
   name = "name of tenant_template_deployment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```