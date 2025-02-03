#FRONT END
Landed by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)

#Infrastructure and deployment
FrontEnd: ecs-ec2
Backend: Azure, CosmosDB
Automation Framework: Jenkins, Terraform

Entire app is deployable from Jenkinsfile which calls terraform.tf to provision AWS ECR, ECS task definition creation and registration
secondly, docker build script is called to build latest image from git repo, tag it, and push to newly created AWS ECR
third, terraform script will build cluster, nesscessary IAM roles, and networking.


