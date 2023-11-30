# azurerm_template_deployment

Manages a template deployment of resources~> **Note:** The `azurerm_template_deployment` resource has been superseded by the [`azurerm_resource_group_template_deployment`](resource_group_template_deployment.html) resource. The existing `azurerm_template_deployment` resource will be deprecated (but still available) in version 3.0 of the AzureRM Terraform Provider - we recommend using the `azurerm_resource_group_template_deployment` resource for new deployments.-> **Note:** This resource will not clean up nested resources deployed by the ARM Template Deployment. We recommend using the [`azurerm_resource_group_template_deployment`](resource_group_template_deployment.html) resource for new deployments, which can do this.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the template deployment. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the template deployment. Changing this forces a new resource to be created. | 
| **var.deployment_mode** | string | True | Specifies the mode that is used to deploy resources. This value could be either `Incremental` or `Complete`. Note that you will almost *always* want this to be set to `Incremental` otherwise the deployment will destroy all infrastructure not specified within the template, and Terraform will not be aware of this. | 
| **var.template_body** | string | False | Specifies the JSON definition for the template. | 
| **var.parameters** | string | False | Specifies the name and value pairs that define the deployment parameters for the template. | 
| **var.parameters_body** | string | False | Specifies a valid Azure JSON parameters file that define the deployment parameters. It can contain KeyVault references | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **deployment_mode** | string  | - | 
| **template_body** | string  | - | 
| **parameters** | string  | - | 
| **parameters_body** | string  | - | 
| **id** | string  | The Template Deployment ID. | 
| **outputs** | string  | A map of supported scalar output types returned from the deployment (currently, Azure Template Deployment outputs of type String, Int and Bool are supported, and are converted to strings - others will be ignored) and can be accessed using `.outputs["name"]`. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "template/template_deployment" 
}

inputs = {
   name = "name of template_deployment" 
   resource_group_name = "${resource_group}" 
   deployment_mode = "deployment_mode of template_deployment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```