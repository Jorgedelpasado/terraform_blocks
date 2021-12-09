variable "project_id" {
    description = "project id"
}

variable "region" {
    description = "region"
}

#GCS
variable "raw_bucket_name" {
    description = "Raw bucket"
}

variable "staging_bucket_name" {
    description = "Staging bucket"
}

variable "code_bucket_name" {
    description = "Code bucket to store the scripts needed"
}