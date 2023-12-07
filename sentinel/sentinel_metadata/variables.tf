# REQUIRED VARIABLES

variable "content_id" {
  description = "(REQUIRED) The ID of the content. Used to identify dependencies and content from solutions or community."
  type        = string

}
variable "kind" {
  description = "(REQUIRED) The kind of content the metadata is for. Possible values are 'AnalyticsRule', 'AnalyticsRuleTemplate', 'AutomationRule', 'AzureFunction', 'DataConnector', 'DataType', 'HuntingQuery', 'InvestigationQuery', 'LogicAppsCustomConnector', 'Parser', 'Playbook', 'PlaybookTemplate', 'Solution', 'Watchlist', 'WatchlistTemplate', 'Workbook' and 'WorkbookTemplate'."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created."
  type        = string

}
variable "parent_id" {
  description = "(REQUIRED) The ID of the parent resource ID of the content item, which the metadata belongs to."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "author" {
  description = "An 'author' blocks."
  type        = map(map(any))
  default     = null
}
#
# author block structure:
#   name (string)         : The name of the author, company or person.
#   email (string)        : The email address of the author contact.
#   link (string)         : The link for author/vendor page.


variable "category" {
  description = "A 'category' block."
  type        = map(any)
  default     = null
}
#
# category block structure:
#   domains (string)        : Specifies a list of domains for the solution content item.
#   verticals (string)      : Specifies a list of industry verticals for the solution content item.


variable "content_schema_version" {
  description = "Schema version of the content. Can be used to distinguish between flow based on the schema version."
  type        = string
  default     = null
}
variable "custom_version" {
  description = "The Custom version of the content."
  type        = string
  default     = null
}
variable "dependency" {
  description = "A JSON formatted 'dependency' block. Dependency for the content item, what other content items it requires to work."
  type        = map(any)
  default     = null
}
#
# dependency block structure:
#   contentId (string)        : ID of the content item that is depended on.
#   kind (string)             : Type of the content item that is depended on.
#   version (string)          : Version of the content item that is depended on.
#   operator (string)         : Operator used for list of dependencies in 'criteria' array.
#   criteria (string)         : Specifies a list of 'dependency' which must be fulfilled, according to the 'operator'.


variable "first_publish_date" {
  description = "The first publish date of solution content item."
  type        = string
  default     = null
}
variable "icon_id" {
  description = "The ID of the icon, this id can be fetched from the solution template."
  type        = string
  default     = null
}
variable "last_publish_date" {
  description = "The last publish date of solution content item."
  type        = string
  default     = null
}
variable "preview_images" {
  description = "Specifies a list of preview image file names. These will be taken from solution artifacts."
  type        = string
  default     = null
}
variable "preview_images_dark" {
  description = "Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts."
  type        = string
  default     = null
}
variable "providers" {
  description = "Specifies a list of providers for the solution content item."
  type        = string
  default     = null
}
variable "source" {
  description = "A 'source' block."
  type        = map(any)
  default     = null
}
#
# source block structure:
#   name (string)         : The name of the content source, repo name, solution name, Log Analytics Workspace name, etc.
#   kind (string)         : (REQUIRED) The kind of the content source. Possible values are 'Community', 'LocalWorkspace', 'Solution' and 'SourceRepository'.


variable "support" {
  description = "A 'support' block."
  type        = map(any)
  default     = null
}
#
# support block structure:
#   tier (string)          : (REQUIRED) The type of support for content item. Possible values are 'Microsoft', 'Partner' and 'Community'.
#   email (string)         : The email address of the support contact.
#   link (string)          : The link for support help.
#   name (string)          : The name of the support contact.


variable "threat_analysis_tactics" {
  description = "Specifies a list of tactics the resource covers. Possible values are 'Reconnaissance', 'ResourceDevelopment', 'InitialAccess', 'Execution', 'Persistence', 'PrivilegeEscalation', 'DefenseEvasion', 'CredentialAccess', 'Discovery', 'LateralMovement', 'Collection', 'CommandAndControl', 'Exfiltration', 'Impact', 'ImpairProcessControl' and 'InhibitResponseFunction'."
  type        = string
  default     = null
}
variable "threat_analysis_techniques" {
  description = "Specifies a list of techniques the resource covers."
  type        = string
  default     = null
}
variable "version" {
  description = "Version of the content."
  type        = string
  default     = null
}
