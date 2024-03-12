<br><br>

<div align="center">

<h3>
    Google Cloud Platform + Infrastructure as Code
</h3>

<br>

<span>
<img width="150" src="https://user-images.githubusercontent.com/25181517/183911547-990692bc-8411-4878-99a0-43506cdb69cf.png" />
</span>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span>
<img width="150" src="https://user-images.githubusercontent.com/25181517/183345121-36788a6e-5462-424a-be67-af1ebeda79a2.png" />
</span>
</div>

</div>


<br>

### This is a project to generate a Infrastructure in Google Cloud Platform. This works with many modules made with Terraform to set all configuration.

<br>

## Requirements

- Google Cloud Platform account
- Create a project
- Create a Service Account - and get the credentials JSON
- Create on google-cloud-storage (optional)
  - bucket to storage .tfstate
  - set backend name in providers.tf
 
<br>

## How to run

### To init

`terraform init -upgrade`

### To run 

`terraform apply --auto-approve`

### To destroy

`terraform destroy --auto-approve`

### To connect on cluster

`gcloud container clusters get-credentials <CLUSTER_NAME> --region us-central1 --project <PROJECT_NAME>`

### To format code

`terraform fmt -recursive`

### To validate code

`terraform validate`

<br>

## Inputs

  - project_id
    - The Project Id
  - credentials
    - JSON file with credentials
  - zone
  - region

## Outputs

  - db_info
    - public_ip_address
    - database
    - user
    - password
    - sensitive = true
  - cluster_info
    - cluster_ca_certificate
    - cluster_auth
    - cluster_endpoint
    - sensitive = true