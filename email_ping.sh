# Alert Daemon for Lapps Service Checking


email_ping ()     {
    local url=$1
    local subject=$2
    local email=$3
    curl $url -s -f -o /dev/null || echo "$subject ($url)" | mail -s "$subject ($url)" "$email"
} # email_ping


# ServiceManager (/local/eldrad/users/lapps/tomcat7/8080)
email_ping http://eldrad.cs-i.brandeis.edu:8080/ "Lapps ServiceManager" "shicq@cs.brandeis.edu, marc@cs.brandeis.edu"

# Lapps Service (/local/eldrad/users/lapps/tomcat7/8282)
email_ping http://eldrad.cs-i.brandeis.edu:8282/ "Lapps Services" "shicq@cs.brandeis.edu, marc@cs.brandeis.edu"


# Visualization Tool (/local/eldrad/users/lapps/tomcat7/8484)
email_ping http://eldrad.cs-i.brandeis.edu:8484/ "Lapps Visualization Page" "shicq@cs.brandeis.edu, marc@cs.brandeis.edu"


# Galaxy (/local/eldrad/users/lapps/tomcat7/8000)
email_ping http://eldrad.cs-i.brandeis.edu:8000/ "Galaxy" "shicq@cs.brandeis.edu, marc@cs.brandeis.edu"

# TEST1: curl www.websiteToTest.com -s -f -o /dev/null || echo "Website Down." | mail -s "Website is down" shicq@cs.brandeis.edu 

# TEST2: curl http://eldrad.cs-i.brandeis.edu:8282/ -s -f -o /dev/null || echo "Lapps Service Down." | mail -s "Lapps Service is down" shicq@cs.brandeis.edu 
