# dbt project template with BigQuery

## Prerequisites

* Python 3.6+
* A BigQuery project, you could get a 90 free trial from [here](https://cloud.google.com/bigquery/)

## Setup instructions

* Clone this repo
* Create a virtual environment:

```bash
python3 -m venv venv
source venv/bin/activate
```

* Install dependencies:

```bash
pip install -r requirements.txt
```

* Modify `dbt_project.yml` and `profiles.yml` to point to your BigQuery project and configure your credentials (using a service account key or gcloud login)
* Organize and structure your data models in the `models` directory


### Run dbt locally

Export environmental variables:

```bash
export DBT_PROFILES_DIR=./
export DBT_PROJECT_DIR=./
export GCP_SERVICE_ACCOUNT_KEYFILE=<YOUR_SERVICE_ACCOUNT_KEYFILE>
```

Try running the following commands:
- dbt run
- dbt test

Generate dbt docs:
    
```bash
dbt docs generate
dbt docs serve
```

### Run dbt in production

* Add changes to the project
* Run and test things locally
* Commit and push to the remote repository
* The CI/CD will run the dbt commands and deploy the changes to the production environment

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
