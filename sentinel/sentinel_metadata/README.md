# azurerm_sentinel_metadata

Manages a Sentinel Metadata.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_metadata" 
}

inputs = {
   content_id = "content_id of sentinel_metadata" 
   kind = "kind of sentinel_metadata" 
   name = "name of sentinel_metadata" 
   parent_id = "parent_id of sentinel_metadata" 
   workspace_id = "workspace_id of sentinel_metadata" 
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
| **var.content_id** | string | True | -  |  The ID of the content. Used to identify dependencies and content from solutions or community. | 
| **var.kind** | string | True | `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook`, `WorkbookTemplate`  |  The kind of content the metadata is for. Possible values are `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook` and `WorkbookTemplate`. | 
| **var.name** | string | True | -  |  The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created. | 
| **var.parent_id** | string | True | -  |  The ID of the parent resource ID of the content item, which the metadata belongs to. | 
| **var.workspace_id** | string | True | -  |  The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created. | 
| **var.author** | block | False | -  |  An `author` blocks. | 
| **var.category** | block | False | -  |  A `category` block. | 
| **var.content_schema_version** | string | False | -  |  Schema version of the content. Can be used to distinguish between flow based on the schema version. | 
| **var.custom_version** | string | False | -  |  The Custom version of the content. | 
| **var.dependency** | block | False | -  |  A JSON formatted `dependency` block. Dependency for the content item, what other content items it requires to work. | 
| **var.first_publish_date** | datetime | False | -  |  The first publish date of solution content item. | 
| **var.icon_id** | string | False | -  |  The ID of the icon, this id can be fetched from the solution template. | 
| **var.last_publish_date** | datetime | False | -  |  The last publish date of solution content item. | 
| **var.preview_images** | string | False | -  |  Specifies a list of preview image file names. These will be taken from solution artifacts. | 
| **var.preview_images_dark** | string | False | -  |  Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts. | 
| **var.providers** | string | False | -  |  Specifies a list of providers for the solution content item. | 
| **var.source** | block | False | -  |  A `source` block. | 
| **var.support** | block | False | -  |  A `support` block. | 
| **var.threat_analysis_tactics** | string | False | `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`  |  Specifies a list of tactics the resource covers. Possible values are `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl` and `InhibitResponseFunction`. | 
| **var.threat_analysis_techniques** | string | False | -  |  Specifies a list of techniques the resource covers. | 
| **var.version** | string | False | -  |  Version of the content. | 

### `author` block structure

> `name` (string): The name of the author, company or person.\
> `email` (string): The email address of the author contact.\
> `link` (string): The link for author/vendor page.\

### `category` block structure

> `domains` (string): Specifies a list of domains for the solution content item.\
> `verticals` (string): Specifies a list of industry verticals for the solution content item.\

### `dependency` block structure

> `contentId` (string): ID of the content item that is depended on.\
> `kind` (string): Type of the content item that is depended on.\
> `version` (string): Version of the content item that is depended on.\
> `operator` (string): Operator used for list of dependencies in 'criteria' array.\
> `criteria` (string): Specifies a list of 'dependency' which must be fulfilled, according to the 'operator'.\

### `source` block structure

> `name` (string): The name of the content source, repo name, solution name, Log Analytics Workspace name, etc.\
> `kind` (string): (REQUIRED) The kind of the content source. Possible values are 'Community', 'LocalWorkspace', 'Solution' and 'SourceRepository'.\

### `support` block structure

> `tier` (string): (REQUIRED) The type of support for content item. Possible values are 'Microsoft', 'Partner' and 'Community'.\
> `email` (string): The email address of the support contact.\
> `link` (string): The link for support help.\
> `name` (string): The name of the support contact.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Metadata. | 

Additionally, all variables are provided as outputs.
