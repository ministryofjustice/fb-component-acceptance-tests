#!/bin/sh

set -ex

# adds a test token to use in end to end test
docker-compose exec service-token-cache-app sh -c "bundle exec rails runner \"Adapters::RedisCacheAdapter.put('encoded-public-key-slug', 'LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUEzU1RCMkxnaDAyWWt0K0xxejluNgo5MlNwV0xFdXNUR1hEMGlmWTBuRHpmbXF4MWVlbHoxeHhwSk9MZXRyTGdxbjM3aE1qTlkwL25BQ2NNZHVFSDlLClhycmFieFhYVGwxeVkyMStnbVd4NDlOZVlESW5iZG0rNnM1S3ZMZ1VOTjdYVmNlUDlQdXFaeXN4Q1ZBNFRubUwKRURLZ2xTV2JVeWZ0QmVhVENKVkk2NFoxMmRNdFBiQWd4V0FmZVNMbGI3QlBsc0htL0gwQUFMK25iYU9Da3d2cgpQSkRMVFZPek9XSE1vR2dzMnJ4akJIRC9OV05ac1RWUWFvNFh3aGVidWRobHZNaWtFVzMyV0tnS3VISFc4emR2ClU4TWozM1RYK1picVhPaWtkRE54dHd2a1hGN0xBM1loOExJNUd5ZDlwNmYyN01mbGRnVUlIU3hjSnB5MUo4QVAKcXdJREFRQUIKLS0tLS1FTkQgUFVCTElDIEtFWS0tLS0tCg==')\""

docker-compose exec localstack sh -c "AWS_ACCESS_KEY_ID=qwerty AWS_SECRET_KEY=qwerty AWS_SECRET_ACCESS_KEY=qwerty aws --endpoint-url=http://localhost:4572 s3 mb s3://filestore-bucket"
docker-compose exec localstack sh -c "AWS_ACCESS_KEY_ID=qwerty AWS_SECRET_KEY=qwerty AWS_SECRET_ACCESS_KEY=qwerty aws --endpoint-url=http://localhost:4572 s3api put-bucket-acl --bucket filestore-bucket --acl public-read"
docker-compose exec localstack sh -c "AWS_ACCESS_KEY_ID=qwerty AWS_SECRET_KEY=qwerty AWS_SECRET_ACCESS_KEY=qwerty aws --endpoint-url=http://localhost:4572 s3 mb s3://external-filestore-bucket"
docker-compose exec localstack sh -c "AWS_ACCESS_KEY_ID=qwerty AWS_SECRET_KEY=qwerty AWS_SECRET_ACCESS_KEY=qwerty aws --endpoint-url=http://localhost:4572 s3api put-bucket-acl --bucket external-filestore-bucket --acl public-read"
