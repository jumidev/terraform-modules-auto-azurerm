# azurerm_spring_cloud_app

Manage an Azure Spring Cloud Application.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_app" 
}

inputs = {
   name = "name of spring_cloud_app" 
   resource_group_name = "${resource_group}" 
   service_name = "service_name of spring_cloud_app" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the resource group in which to create the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.service_name** | string | True | -  |  Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **var.addon_json** | string | False | -  |  A JSON object that contains the addon configurations of the Spring Cloud Service. | 
| **var.custom_persistent_disk** | block | False | -  |  A `custom_persistent_disk` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.is_public** | bool | False | `False`  |  Does the Spring Cloud Application have public endpoint? Defaults to `false`. | 
| **var.https_only** | bool | False | `False`  |  Is only HTTPS allowed? Defaults to `false`. | 
| **var.ingress_settings** | block | False | -  |  An `ingress_settings` block. | 
| **var.persistent_disk** | block | False | -  |  An `persistent_disk` block. | 
| **var.public_endpoint_enabled** | bool | False | -  |  Should the App in vnet injection instance exposes endpoint which could be accessed from Internet? | 
| **var.tls_enabled** | bool | False | `False`  |  Is End to End TLS Enabled? Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Application. | 
| **fqdn** | string | No  | The Fully Qualified DNS Name of the Spring Application in the service. | 
| **url** | string | No  | The public endpoint of the Spring Cloud Application. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application. | 

Additionally, all variables are provided as outputs.
