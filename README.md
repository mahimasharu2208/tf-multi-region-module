# tf-multi-region-module
## Multi-Region Module Example

This Terraform project demonstrates how to:
- Create a reusable S3 module
- Use it twice
- Deploy it to different AWS regions using provider aliases

### Project Structure

```bash
.
tf-multi-region-module/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   └── s3_bucket/
│       ├── outputs.tf
│       └── variables.tf
```

### AWS Regions

- `us-east-1` (alias: use1)
- `us-west-2` (alias: usw2)

### Usage

```bash
terraform init
terraform apply
      or
terraform apply \
  -var="bucket_name_use1=my-module-bucket-east" \
  -var="bucket_name_usw2=my-module-bucket-west"
```

### Results
![output](https://github.com/mahimasharu2208/tf-multi-region-module/blob/main/outputs/multi1.png)
![output](https://github.com/mahimasharu2208/tf-multi-region-module/blob/main/outputs/multi2.png)
![output](https://github.com/mahimasharu2208/tf-multi-region-module/blob/main/outputs/multi3.png)


