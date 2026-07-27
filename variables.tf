variable "stream_analytics_function_javascript_uda" {
  description = <<EOT
Map of stream_analytics_function_javascript_uda, attributes below
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
      for k, v in var.stream_analytics_function_javascript_uda : (
        length(v.input) >= 1
      )
    ])
    error_message = "Each input list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_uda : (
        alltrue([for item in v.input : (contains(["any", "array", "bigint", "datetime", "float", "nvarchar(max)", "record"], item.type))])
      )
    ])
    error_message = "must be one of: any, array, bigint, datetime, float, nvarchar(max), record"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_uda : (
        contains(["any", "array", "bigint", "datetime", "float", "nvarchar(max)", "record"], v.output.type)
      )
    ])
    error_message = "must be one of: any, array, bigint, datetime, float, nvarchar(max), record"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_function_javascript_uda : (
        length(v.script) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

