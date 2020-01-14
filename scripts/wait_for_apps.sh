#!/bin/sh

for app in datastore-app filestore-app submitter-app pdf-generator service-token-cache-app; do
    until docker exec $app wget http://localhost:3000/health -O - | grep healthy; do
        echo "Waiting for ${app} to start accepting traffic...";
        sleep 1
    done
done

until docker exec output-recorder wget http://localhost:8080/health -O - | grep healthy; do
    echo "Waiting for output-recorder to start accepting traffic...";
    sleep 1
done

until docker exec runner-app wget http://localhost:3000/ping.json -O - | grep APP_SHA; do
    echo "Waiting for runner-app to start accepting traffic...";
    sleep 1
done

for app in components-autocomplete-app components-checkboxes-app components-date-app components-email-app components-number-app components-radios-app components-select-app components-text-app components-textarea-app; do
    until docker exec $app wget http://localhost:3000/ping.json -O - | grep APP_SHA; do
       echo "Waiting for ${app} to start accepting traffic...";
       sleep 1
    done
done

echo "All apps accepting traffic";
