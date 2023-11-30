# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Databox Edge Order should exist. Changing this forces a new Databox Edge Order to be created."
  type        = string

}
variable "device_name" {
  description = "(REQUIRED) The name of the Databox Edge Device this order is for. Changing this forces a new Databox Edge Order to be created."
  type        = string

}
variable "contact" {
  description = "(REQUIRED) A 'contact' block."
  type        = map(any)
}
#
# contact block structure:
#   company_name (string)  : (REQUIRED) The name of the company. Changing this forces a new Databox Edge Order to be created.
#   emails (list)          : (REQUIRED) A list of email address to send order notification to. Changing this forces a new Databox Edge Order to be created.
#   phone_number (string)  : (REQUIRED) The phone number. Changing this forces a new Databox Edge Order to be created.


variable "shipment_address" {
  description = "(REQUIRED) A 'shipment_address' block."
  type        = map(any)
}
#
# shipment_address block structure:
#   address (string)                : (REQUIRED) The list of upto 3 lines for address information.
#   city (string)                   : (REQUIRED) The city name. Changing this forces a new Databox Edge Order to be created.
#   country (string)                : (REQUIRED) The name of the country to ship the Databox Edge Device to. Valid values are 'Algeria', 'Argentina', 'Australia', 'Austria', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belgium', 'Bermuda', 'Bolivia', 'Bosnia and Herzegovina', 'Brazil', 'Bulgaria', 'Canada', 'Cayman Islands', 'Chile', 'Colombia', 'Costa Rica', 'Croatia', 'Cyprus', 'Czechia', 'CÃ´te D'ivoire', 'Denmark', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 'Estonia', 'Ethiopia', 'Finland', 'France', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Guatemala', 'Honduras', 'Hong Kong SAR', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kuwait', 'Kyrgyzstan', 'Latvia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macao SAR', 'Malaysia', 'Malta', 'Mauritius', 'Mexico', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Morocco', 'Namibia', 'Nepal', 'Netherlands', 'New Zealand', 'Nicaragua', 'Nigeria', 'Norway', 'Oman', 'Pakistan', 'Palestinian Authority', 'Panama', 'Paraguay', 'Peru', 'Philippines', 'Poland', 'Portugal', 'Puerto Rico', 'Qatar', 'Republic of Korea', 'Romania', 'Russia', 'Rwanda', 'Saint Kitts And Nevis', 'Saudi Arabia', 'Senegal', 'Serbia', 'Singapore', 'Slovakia', 'Slovenia', 'South Africa', 'Spain', 'Sri Lanka', 'Sweden', 'Switzerland', 'Taiwan', 'Tajikistan', 'Tanzania', 'Thailand', 'Trinidad And Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'U.S. Virgin Islands', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'Uruguay', 'Uzbekistan', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia' or 'Zimbabwe'. Changing this forces a new Databox Edge Order to be created.
#   postal_code (string)            : (REQUIRED) The postal code. Changing this forces a new Databox Edge Order to be created.
#   state (string)                  : (REQUIRED) The name of the state to ship the Databox Edge Device to. Changing this forces a new Databox Edge Order to be created.


