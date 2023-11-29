# azurerm_management_group_template_deployment

Manages a Template Deployment at a Management Group Scope.~> **Note:** Deleting a Deployment at the Management Group Scope will not delete any resources created by the deployment.~> **Note:** Deployments to a Management Group are always Incrementally applied. Existing resources that are not part of the template will not be removed.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Template should exist. Changing this forces a new Template to be created. | 
| **management_group_id** | string | True | -  |  -  | The ID of the Management Group to apply the Deployment Template to. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Template Deployment. Changing this forces a new Template Deployment to be created. | 
| **debug_level** | string | False | -  |  `none`, `requestContent`, `responseContent`, `requestContent, responseContent`  | The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`. | 
| **parameters_content** | string | False | -  |  -  | The contents of the ARM Template parameters file - containing a JSON list of parameters. | 
| **template_content** | string | False | -  |  -  | The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`. | 
| **template_spec_version_id** | string | False | -  |  -  | The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Template. | 

