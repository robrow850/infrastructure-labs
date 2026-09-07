# GitHub Actions lab

The workflow in ../.github/workflows/validate.yml checks Terraform formatting and
validation for both examples on pull requests, pushes and manual runs. It requires
no Azure credentials and performs no apply. Providers may be downloaded during init.

Study the read-only repository permission, separate working directories and
backend-disabled initialization. A successful CI validation is not proof of a
successful Azure deployment. Add deployment stages only after choosing an authorized
test subscription, protected environment and explicit approval process.
