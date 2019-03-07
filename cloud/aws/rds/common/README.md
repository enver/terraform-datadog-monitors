# CLOUD AWS RDS COMMON DataDog monitors

## How to use this module

```
module "datadog-monitors-cloud-aws-rds-common" {
  source = "git::ssh://git@git.fr.clara.net/claranet/cloudnative/projects/datadog/terraform/monitors.git//cloud/aws/rds/common?ref={revision}"

  environment = "${var.environment}"
  message     = "${module.datadog-message-alerting.alerting-message}"
}

```

## Purpose

Creates DataDog monitors with the following checks:

- RDS instance CPU high
- RDS instance free space
- RDS replica lag

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cpu\_enabled | Flag to enable RDS CPU usage monitor | string | `"true"` | no |
| cpu\_extra\_tags | Extra tags for RDS CPU usage monitor | list | `[]` | no |
| cpu\_message | Custom message for RDS CPU usage monitor | string | `""` | no |
| cpu\_silenced | Groups to mute for RDS CPU usage monitor | map | `{}` | no |
| cpu\_threshold\_critical | CPU usage in percent (critical threshold) | string | `"90"` | no |
| cpu\_threshold\_warning | CPU usage in percent (warning threshold) | string | `"80"` | no |
| cpu\_time\_aggregator | Monitor aggregator for RDS CPU usage [available values: min, max or avg] | string | `"min"` | no |
| cpu\_timeframe | Monitor timeframe for RDS CPU usage [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | string | `"last_15m"` | no |
| diskspace\_enabled | Flag to enable RDS free diskspace monitor | string | `"true"` | no |
| diskspace\_extra\_tags | Extra tags for RDS free diskspace monitor | list | `[]` | no |
| diskspace\_message | Custom message for RDS free diskspace monitor | string | `""` | no |
| diskspace\_silenced | Groups to mute for RDS free diskspace monitor | map | `{}` | no |
| diskspace\_threshold\_critical | Disk free space in percent (critical threshold) | string | `"10"` | no |
| diskspace\_threshold\_warning | Disk free space in percent (warning threshold) | string | `"20"` | no |
| diskspace\_time\_aggregator | Monitor aggregator for RDS free diskspace [available values: min, max or avg] | string | `"min"` | no |
| diskspace\_timeframe | Monitor timeframe for RDS free diskspace [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | string | `"last_15m"` | no |
| environment | Architecture Environment | string | n/a | yes |
| evaluation\_delay | Delay in seconds for the metric evaluation | string | `"900"` | no |
| filter\_tags\_custom | Tags used for custom filtering when filter_tags_use_defaults is false | string | `"*"` | no |
| filter\_tags\_custom\_excluded | Tags excluded for custom filtering when filter_tags_use_defaults is false | string | `""` | no |
| filter\_tags\_use\_defaults | Use default filter tags convention | string | `"true"` | no |
| message | Message sent when an alert is triggered | string | n/a | yes |
| new\_host\_delay | Delay in seconds before monitor new resource | string | `"300"` | no |
| replicalag\_enabled | Flag to enable RDS replica lag monitor | string | `"true"` | no |
| replicalag\_extra\_tags | Extra tags for RDS replica lag monitor | list | `[]` | no |
| replicalag\_message | Custom message for RDS replica lag monitor | string | `""` | no |
| replicalag\_silenced | Groups to mute for RDS replica lag monitor | map | `{}` | no |
| replicalag\_threshold\_critical | replica lag in seconds (critical threshold) | string | `"300"` | no |
| replicalag\_threshold\_warning | replica lag in seconds (warning threshold) | string | `"200"` | no |
| replicalag\_timeframe | Monitor timeframe for RDS replica lag monitor [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | string | `"last_5m"` | no |

## Outputs

| Name | Description |
|------|-------------|
| rds\_cpu\_90\_15min\_id | id for monitor rds_cpu_90_15min |
| rds\_free\_space\_low\_id | id for monitor rds_free_space_low |
| rds\_replica\_lag\_id | id for monitor rds_replica_lag |

## Related documentation

DataDog documentation: [https://docs.datadoghq.com/integrations/amazon_rds/](https://docs.datadoghq.com/integrations/amazon_rds/)

AWS RDS Instance metrics documentation: [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/rds-metricscollected.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/rds-metricscollected.html)
