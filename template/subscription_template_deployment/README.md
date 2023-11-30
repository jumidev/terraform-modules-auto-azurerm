# azurerm_subscription_template_deployment

Manages a Subscription Template Deployment.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.location** | string | True | -  |  The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created. | 
| **var.debug_level** | string | False | `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  |  The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **var.template_content** | string | False | -  |  The contents of the ARM Template which should be deployed into this Subscription. | 
| **var.template_spec_version_id** | string | False | -  |  The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `template_content`. | 
| **var.parameters_content** | string | False | -  |  The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Subscription Template Deployment. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **debug_level** | string  | - | 
| **template_content** | string  | - | 
| **template_spec_version_id** | string  | - | 
| **parameters_content** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Subscription Template Deployment. | 
| **output_content** | string  | The JSON Content of the Outputs of the ARM Template Deployment. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "template/subscription_template_deployment" 
}

inputs = {
   location = "${location}" 
   name = "name of subscription_template_deployment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```