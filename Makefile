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
	mkdir -p .components/autocomplete
	mkdir -p .components/checkboxes
	mkdir -p .components/date
	mkdir -p .components/email
	mkdir -p .components/fieldset
	mkdir -p .components/number
	mkdir -p .components/radios
	mkdir -p .components/select
	mkdir -p .components/text
	mkdir -p .components/textarea
	mkdir -p .components/upload

copy-components:
	cp -r .runner/* .components/autocomplete
	cp -r .runner/* .components/checkboxes
	cp -r .runner/* .components/date
	cp -r .runner/* .components/email
	cp -r .runner/* .components/fieldset
	cp -r .runner/* .components/number
	cp -r .runner/* .components/radios
	cp -r .runner/* .components/select
	cp -r .runner/* .components/text
	cp -r .runner/* .components/textarea
	cp -r .runner/* .components/upload

stop:
	docker-compose down

build: stop setup
	echo HEAD > .components/autocomplete/APP_SHA
	mkdir -p .components/autocomplete/form
	cp -r ./forms/autocomplete/* .components/autocomplete/form
	echo HEAD > .components/checkboxes/APP_SHA
	mkdir -p .components/checkboxes/form
	cp -r ./forms/checkboxes/* .components/checkboxes/form
	echo HEAD > .components/date/APP_SHA
	mkdir -p .components/date/form
	cp -r ./forms/date/* .components/date/form
	echo HEAD > .components/email/APP_SHA
	mkdir -p .components/email/form
	cp -r ./forms/email/* .components/email/form
	echo HEAD > .components/fieldset/APP_SHA
	mkdir -p .components/fieldset/form
	cp -r ./forms/fieldset/* .components/fieldset/form
	echo HEAD > .components/number/APP_SHA
	mkdir -p .components/number/form
	cp -r ./forms/number/* .components/number/form
	echo HEAD > .components/radios/APP_SHA
	mkdir -p .components/radios/form
	cp -r ./forms/radios/* .components/radios/form
	echo HEAD > .components/select/APP_SHA
	mkdir -p .components/select/form
	cp -r ./forms/select/* .components/select/form
	echo HEAD > .components/text/APP_SHA
	mkdir -p .components/text/form
	cp -r ./forms/text/* .components/text/form
	echo HEAD > .components/textarea/APP_SHA
	mkdir -p .components/textarea/form
	cp -r ./forms/textarea/* .components/textarea/form
	echo HEAD > .components/upload/APP_SHA
	mkdir -p .components/upload/form
	cp -r ./forms/upload/* .components/upload/form
	docker-compose build --parallel

serve: build
	docker-compose up -d
	./scripts/wait_for_apps.sh
	./scripts/setup_test_env.sh

spec: .components serve
	docker-compose run tests bundle exec rspec

clean:
	rm -rf .runner .components .submitter .datastore .filestore .service-token-cache
