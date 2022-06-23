resource "google_dataflow_job" "big_data_job" {
  name         = var.df-name
  project      = var.project_id
  kms_key_name = "projects/modular-scout-345114/locations/global/keyRings/keyring-example/cryptoKeys/crypto-key-example"
  service_account_email = "composer-test-sa2@modular-scout-345114.iam.gserviceaccount.com"
  ip_configuration = null # "WORKER_IP_PUBLIC" # "WORKER_IP_PRIVATE"
  template_gcs_path = "gs://my-bucket-df/templates/template_file/latest_Word_Count"
  temp_gcs_location = "gs://my-bucket-df/tmp_dir"
  
  labels = {
      application_division = "pci",
      application_name     = "demo",
      application_role     = "app",
      au                   = "0223092",
      created              = "20211122",
      environment          = "prod",
      gcp_region           = "us",
      owner                = "hybridenv",
    }
}
