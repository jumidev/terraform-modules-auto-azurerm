# azurerm_portal_tenant_configuration

Manages Portal Tenant Configuration.~> **Note:** User has to be `Contributor` or `Owner` at scope `/` for managing this resource.~> **Note:** The Service Principal with Tenant Admin can be created by `az ad sp create-for-rbac --name "<sp name>" --role="Contributor" --scopes="/"`.~> **Note:** The Service Principal can be granted Tenant Admin permission by `az role assignment create --assignee "<app id>" --role "Contributor" --scope "/"`.~> **Note:** While assigning the role to the existing/new Service Principal at the Tenant Scope, the user assigning role must already have the `Owner` role assigned at the Tenant Scope.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **private_markdown_storage_enforced** | bool | True | -  |  -  | Is the private tile markdown storage which used to display custom dynamic and static content enabled? | 

