variable "stream_analytics_function_javascript_udas" {
  description = <<EOT
Map of stream_analytics_function_javascript_udas, attributes below
Required:
    - name
    - script
    - stream_analytics_job_id
    - input (block):
        - configuration_parameter (optional)
        - type (required)
    - output (block):
        - type (required)
EOT

  type = map(object({
    name                    = string
    script                  = string
    stream_analytics_job_id = string
    input = list(object({
      configuration_parameter = optional(bool)
      type                    = string
    }))
    output = object({
      type = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_udas : (
        length(v.input) >= 1
      )
    ])
    error_message = "Each input list must contain at least 1 items"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_function_javascript_uda's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.FunctionName] !regexp.MustCompile(`^[a-zA-Z0-9-]{3,63}$`).MatchString(input)
  # path: stream_analytics_job_id
  #   source:    [from streamingjobs.ValidateStreamingJobID] !ok
  # path: stream_analytics_job_id
  #   source:    [from streamingjobs.ValidateStreamingJobID] err != nil
  # path: input.type
  #   condition: contains(["any", "array", "bigint", "datetime", "float", "nvarchar(max)", "record"], value)
  #   message:   must be one of: any, array, bigint, datetime, float, nvarchar(max), record
  # path: output.type
  #   condition: contains(["any", "array", "bigint", "datetime", "float", "nvarchar(max)", "record"], value)
  #   message:   must be one of: any, array, bigint, datetime, float, nvarchar(max), record
  # path: script
  #   condition: length(value) > 0
  #   message:   must not be empty
}

