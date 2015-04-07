#! /bin/bash

if [ -z $GROUPID ]; then
    echo "ERROR: GROUPID is not set."
    exit 1
fi
if [ -z $APIKEY ]; then
    echo "ERROR: APIKEY is not set."
    exit 1
fi

echo "Starting with mmsGroupId '${GROUPID}' and mmsApiKey '${APIKEY}'."

sed -i "s/@GROUP_ID@/${GROUPID}/" /etc/mongodb-mms/automation-agent.config
sed -i "s/@API_KEY@/${APIKEY}/" /etc/mongodb-mms/automation-agent.config

/opt/mongodb-mms-automation/bin/mongodb-mms-automation-agent -f /etc/mongodb-mms/automation-agent.config
