variable "api_management_diagnostics" {
  description = <<EOT
Map of api_management_diagnostics, attributes below
Required:
    - api_management_logger_id
    - api_management_name
    - identifier
    - resource_group_name
Optional:
    - always_log_errors
    - http_correlation_protocol
    - log_client_ip
    - operation_name_format
    - sampling_percentage
    - verbosity
    - backend_request (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
    - backend_response (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
    - frontend_request (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
    - frontend_response (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
EOT

  type = map(object({
    api_management_logger_id  = string
    api_management_name       = string
    identifier                = string
    resource_group_name       = string
    always_log_errors         = optional(bool)
    http_correlation_protocol = optional(string)
    log_client_ip             = optional(bool)
    operation_name_format     = optional(string)
    sampling_percentage       = optional(number)
    verbosity                 = optional(string)
    backend_request = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
    backend_response = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
    frontend_request = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
    frontend_response = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_diagnostic's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: identifier
  #   condition: contains(["applicationinsights", "azuremonitor"], value)
  #   message:   must be one of: applicationinsights, azuremonitor
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
  # path: api_management_logger_id
  #   source:    [from logger.ValidateLoggerID] !ok
  # path: api_management_logger_id
  #   source:    [from logger.ValidateLoggerID] err != nil
  # path: sampling_percentage
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: verbosity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: http_correlation_protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: operation_name_format
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

