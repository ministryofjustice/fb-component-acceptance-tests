setup: .runner .components .submitter .datastore .filestore  .service-token-cache

.datastore:
	git clone git@github.com:ministryofjustice/fb-user-datastore.git .datastore

.filestore:
	git clone git@github.com:ministryofjustice/fb-user-filestore.git .filestore

.runner:
	git clone git@github.com:ministryofjustice/fb-runner-node.git .runner

.components: make-components copy-components

.submitter:
	git clone git@github.com:ministryofjustice/fb-submitter.git .submitter

.service-token-cache:
	git clone git@github.com:ministryofjustice/fb-service-token-cache.git .service-token-cache

destroy: stop clean

make-components:
	./scripts/make_components.sh

copy-components:
	./scripts/copy_components.sh

stop:
	docker-compose down
	./scripts/teardown.sh

build: stop setup
	./scripts/setup_components.sh
	docker-compose build --parallel

serve: build
	docker-compose up -d
	./scripts/wait_for_components_apps.sh
	./scripts/setup_test_env.sh

spec: .components serve
	docker-compose run tests bundle exec rspec

clean:
	rm -rf .runner .components .submitter .datastore .filestore .service-token-cache
