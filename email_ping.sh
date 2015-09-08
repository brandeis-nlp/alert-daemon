# Alert Daemon for Lapps Service Checking


email_ping ()     {
    local url=$1
    local subject=$2
    local email=$3
    curl $url -s -f -o /dev/null || echo "$subject ($url)" | mail -s "$subject ($url)" "$email"
} # email_ping


curl www.websiteToTest.com -s -f -o /dev/null || echo "Website Down." | mail -s "Website is down" shicq@cs.brandeis.edu 

curl http://eldrad.cs-i.brandeis.edu:8282/ -s -f -o /dev/null || echo "Lapps Service Down." | mail -s "Lapps Service is down" shicq@cs.brandeis.edu 
