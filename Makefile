setup: .runner .components .submitter .datastore .filestore .pdf-generator .service-token-cache

.datastore:
	git clone git@github.com:ministryofjustice/fb-user-datastore.git .datastore

.filestore:
	git clone git@github.com:ministryofjustice/fb-user-filestore.git .filestore

.runner:
	git clone git@github.com:ministryofjustice/fb-runner-node.git .runner

.components:
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/autocomplete
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/checkboxes
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/date
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/email
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/number
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/radios
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/select
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/text
	git clone git@github.com:ministryofjustice/fb-runner-node.git .components/textarea

.submitter:
	git clone git@github.com:ministryofjustice/fb-submitter.git .submitter

.pdf-generator:
	git clone git@github.com:ministryofjustice/fb-pdf-generator.git .pdf-generator

.service-token-cache:
	git clone git@github.com:ministryofjustice/fb-service-token-cache.git .service-token-cache

destroy: .runner .components .submitter .datastore .filestore .pdf-generator .service-token-cache
	docker-compose down

stop:
	docker-compose down

build: stop setup
	echo HEAD > .runner/APP_SHA
	mkdir -p .runner/forms
	cp -r forms/* .runner/forms
	echo HEAD > .components/autocomplete/APP_SHA
	mkdir -p .components/autocomplete/form
	cp -r forms/components/autocomplete/* .components/autocomplete/form
	echo HEAD > .components/checkboxes/APP_SHA
	mkdir -p .components/checkboxes/form
	cp -r forms/components/checkboxes/* .components/checkboxes/form
	echo HEAD > .components/date/APP_SHA
	mkdir -p .components/date/form
	cp -r forms/components/date/* .components/date/form
	echo HEAD > .components/email/APP_SHA
	mkdir -p .components/email/form
	cp -r forms/components/email/* .components/email/form
	echo HEAD > .components/number/APP_SHA
	mkdir -p .components/number/form
	cp -r forms/components/number/* .components/number/form
	echo HEAD > .components/radios/APP_SHA
	mkdir -p .components/radios/form
	cp -r forms/components/radios/* .components/radios/form
	echo HEAD > .components/select/APP_SHA
	mkdir -p .components/select/form
	cp -r forms/components/select/* .components/select/form
	echo HEAD > .components/text/APP_SHA
	mkdir -p .components/text/form
	cp -r forms/components/text/* .components/text/form
	echo HEAD > .components/textarea/APP_SHA
	mkdir -p .components/textarea/form
	cp -r forms/components/textarea/* .components/textarea/form
	docker-compose build --parallel

serve: build
	docker-compose up -d
	./scripts/wait_for_apps.sh
	./scripts/setup_test_env.sh

spec: serve
	docker-compose run acceptance-tests bundle exec rspec

clean:
	rm -fr .runner .components .submitter .datastore .filestore .pdf-generator .service-token-cache
