# azurerm_portal_tenant_configuration

Manages Portal Tenant Configuration.~> **Note:** User has to be `Contributor` or `Owner` at scope `/` for managing this resource.~> **Note:** The Service Principal with Tenant Admin can be created by `az ad sp create-for-rbac --name "<sp name>" --role="Contributor" --scopes="/"`.~> **Note:** The Service Principal can be granted Tenant Admin permission by `az role assignment create --assignee "<app id>" --role "Contributor" --scope "/"`.~> **Note:** While assigning the role to the existing/new Service Principal at the Tenant Scope, the user assigning role must already have the `Owner` role assigned at the Tenant Scope.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "portal/portal_tenant_configuration"   
}

inputs = {
   private_markdown_storage_enforced = "private_markdown_storage_enforced of portal_tenant_configuration"   
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
| **private_markdown_storage_enforced** | bool |  Is the private tile markdown storage which used to display custom dynamic and static content enabled? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Portal Tenant Configuration. | 

Additionally, all variables are provided as outputs.
