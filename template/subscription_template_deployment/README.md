# azurerm_subscription_template_deployment

Manages a Subscription Template Deployment.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.location** | string  The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created. | 
| **var.name** | string  The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.debug_level** | string  `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  |  The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **var.template_content** | string  -  |  The contents of the ARM Template which should be deployed into this Subscription. | 
| **var.template_spec_version_id** | string  -  |  The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `template_content`. | 
| **var.parameters_content** | string  -  |  The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **var.tags** | map  -  |  A mapping of tags which should be assigned to the Subscription Template Deployment. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Subscription Template Deployment. | 
| **output_content** | string | No  | The JSON Content of the Outputs of the ARM Template Deployment. | 

Additionally, all variables are provided as outputs.
