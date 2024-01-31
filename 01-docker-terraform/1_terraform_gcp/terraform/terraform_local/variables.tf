variable "credentials" {
  description = "My Credentials"
  default     = "./keys/google_credentials.json"
}

variable "project" {
  description = "Project"
  default     = "data-eng-zoomcamp2024"
}

variable "region" {
  description = "Region"
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}


variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "data-eng-zoomcamp2024-terraform-bucket"
}

variable "gcs_storage_classs" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
