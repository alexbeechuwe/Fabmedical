host="TRyykFV9o6FidTnLBbQJNXjaBPMJXdX0XYHNJo7sfsXyWapz0qD4VOZHkjwxHpmdQ6gYnqVJkMr2SGGHeVDZoQ=="
username="fabmedical-769580"
password="TRyykFV9o6FidTnLBbQJNXjaBPMJXdX0XYHNJo7sfsXyWapz0qD4VOZHkjwxHpmdQ6gYnqVJkMr2SGGHeVDZoQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
