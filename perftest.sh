host="fabmedical-551292.mongo.cosmos.azure.com"
username="fabmedical-551292"
password="42Cwgwt6PEvnIZRXRK2vBMjRq4jm8A5DQnVhXKorNrDK5We75oecQuKABEKRZ0dseinHr8z4WiNlUWnQJo5W1w=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
