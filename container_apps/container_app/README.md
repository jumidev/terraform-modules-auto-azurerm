# azurerm_container_app

Manages a Container App.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container_apps/container_app" 
}

inputs = {
   container_app_environment_id = "container_app_environment_id of container_app" 
   name = "name of container_app" 
   resource_group_name = "${resource_group}" 
   revision_mode = "revision_mode of container_app" 
   template = "template of container_app" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.container_app_environment_id** | string | True | -  |  The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  The name for this Container App. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created. | 
| **var.revision_mode** | string | True | `Single`, `Multiple`  |  The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration. | 
| **var.template** | block | True | -  |  A `template` block as detailed below. | 
| **var.dapr** | block | False | -  |  A `dapr` block as detailed below. | 
| **var.identity** | block | False | -  |  An `identity` block as detailed below. | 
| **var.ingress** | block | False | -  |  An `ingress` block as detailed below. | 
| **var.registry** | block | False | -  |  A `registry` block as detailed below. | 
| **var.secret** | list | False | -  |  One or more `secret` block as detailed below. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Container App. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container App. | 
| **custom_domain_verification_id** | string | No  | The ID of the Custom Domain Verification for this Container App. | 
| **latest_revision_fqdn** | string | No  | The FQDN of the Latest Revision of the Container App. | 
| **latest_revision_name** | string | No  | The name of the latest Container Revision. | 
| **location** | string | No  | The location this Container App is deployed in. This is the same as the Environment in which it is deployed. | 
| **outbound_ip_addresses** | list | No  | A list of the Public IP Addresses which the Container App uses for outbound network access. | 

Additionally, all variables are provided as outputs.
