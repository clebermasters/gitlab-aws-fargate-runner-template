
# Autoscaling GitLab CI on AWS Fargate

This project contains a Cloud Formation Template that creates a ECS cluster to use AWS Fargate as Runner for Gitlab.
As you may know, the AWS Fargate runs Docker container on serverless architecture. This Runner is a little different from a regular Runner because the pipeline
is not executed inside it. Instead, it creates an EC2 (Executor) instance on-demand to perform the pipeline, and later the EC2 is destroyed automatically, saving money. 

So it allows us to spin up powerful instances to process pipelines that require a massive amount of resources or support a high demand with several pipelines running in parallel.


## For more details, access the documentation on this link:

[Autoscaling Gitlab Runner on AWS Fargate](https://www.bitslovers.com/autoscaling-gitlab-ci-on-aws-fargate/) 
