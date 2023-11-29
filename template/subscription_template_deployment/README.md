# azurerm_subscription_template_deployment

Manages a Subscription Template Deployment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created. | 
| **debug_level** | string | False | -  |  `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  | The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **template_content** | string | False | -  |  -  | The contents of the ARM Template which should be deployed into this Subscription. | 
| **template_spec_version_id** | string | False | -  |  -  | The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `template_content`. | 
| **parameters_content** | string | False | -  |  -  | The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Subscription Template Deployment. | 

