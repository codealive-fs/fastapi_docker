# Login to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 629400601463.dkr.ecr.us-east-1.amazonaws.com

# Build the image from your GitHub source code (CodePipeline downloads # it for you)
docker build -t fastapi_docker .

# Tag the image with your ECR repo URI
docker tag fastapi_docker:latest 629400601463.dkr.ecr.us-east-1.amazonaws.com/fast-api

# Push the image to ECR
docker push 629400601463.dkr.ecr.us-east-1.amazonaws.com/fast-api
