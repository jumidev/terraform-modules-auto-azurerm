# azurerm_tenant_template_deployment

Manages a Template Deployment at the Tenant Scope.~> **Note:** Deleting a Deployment at the Tenant Scope will not delete any resources created by the deployment.~> **Note:** Deployments to a Tenant are always Incrementally applied. Existing resources that are not part of the template will not be removed.~> **Note:** Tenant Template Deployments are always targeted at the Tenant in which the current User, Managed Identity, or Service Principal being used by Terraform is homed.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "template/tenant_template_deployment"   
}

inputs = {
   location = "${location}"   
   name = "The name which should be used for this Template"   
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
| **name** | string |  The name which should be used for this Template. Changing this forces a new Template to be created. | 

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
| **id** | string | No  | The ID of the Tenant Template Deployment. | 
| **output_content** | string | No  | The JSON Content of the Outputs of the ARM Template Deployment. | 

Additionally, all variables are provided as outputs.
