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
| `template` block structure: || 
|   container (list): (REQUIRED) One or more 'container' blocks as detailed below. ||
|   max_replicas (int): The maximum number of replicas for this container. ||
|   min_replicas (int): The minimum number of replicas for this container. ||
|   azure_queue_scale_rule (block): One or more 'azure_queue_scale_rule' blocks. ||
|   custom_scale_rule (block): One or more 'custom_scale_rule' blocks. ||
|   http_scale_rule (block): One or more 'http_scale_rule' blocks. ||
|   tcp_scale_rule (block): One or more 'tcp_scale_rule' blocks. ||
|   revision_suffix (string): The suffix for the revision. This value must be unique for the lifetime of the Resource. If omitted the service will use a hash function to create one. ||
|   volume (block): A 'volume' block as detailed below. ||
| **var.dapr** | block | False | -  |  A `dapr` block as detailed below. | 
| `dapr` block structure: || 
|   app_id (string): (REQUIRED) The Dapr Application Identifier. ||
|   app_port (string): The port which the application is listening on. This is the same as the 'ingress' port. ||
|   app_protocol (string): The protocol for the app. Possible values include 'http' and 'grpc'. Defaults to 'http'. ||
| **var.identity** | block | False | -  |  An `identity` block as detailed below. | 
| `identity` block structure: || 
|   type (string): (REQUIRED) The type of managed identity to assign. Possible values are 'SystemAssigned', 'UserAssigned', and 'SystemAssigned, UserAssigned' (to enable both). ||
|   identity_ids (list): - A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. ||
| **var.ingress** | block | False | -  |  An `ingress` block as detailed below. | 
| `ingress` block structure: || 
|   allow_insecure_connections (bool): Should this ingress allow insecure connections? ||
|   custom_domain (list): One or more 'custom_domain' block as detailed below. ||
|   fqdn (string): The FQDN of the ingress. ||
|   external_enabled (bool): Are connections to this Ingress from outside the Container App Environment enabled? Defaults to 'false'. ||
|   target_port (string): (REQUIRED) The target port on the container for the Ingress traffic. ||
|   exposed_port (string): The exposed port on the container for the Ingress traffic. ||
|   traffic_weight (block): (REQUIRED) A 'traffic_weight' block as detailed below. ||
|   transport (string): The transport method for the Ingress. Possible values are 'auto', 'http', 'http2' and 'tcp'. Defaults to 'auto'. ||
| **var.registry** | block | False | -  |  A `registry` block as detailed below. | 
| `registry` block structure: || 
|   server (string): (REQUIRED) The hostname for the Container Registry. ||
|   identity (string): Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry. ||
|   password_secret_name (string): The name of the Secret Reference containing the password value for this user on the Container Registry, 'username' must also be supplied. ||
|   username (string): The username to use for this Container Registry, 'password_secret_name' must also be supplied.. ||
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
