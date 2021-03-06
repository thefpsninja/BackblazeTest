GNU nano 4.8                                                                                                                     /bin/duplicityBackup.sh
#!/bin/sh

# Backblaze B2 configuration variables
B2_ACCOUNT="App KeyID / Master KeyID"
B2_KEY="ApplicationKEY / MasterKEY"
B2_BUCKET="BucketName"
B2_DIR="Name of folder in Cloud"
## Example Below Becomes YYYY-MM-DD The extra variable is needed to calculate time then echo it
#now=$(date +%F)
#B2_DIR="$now"

# Local directory to backup
LOCAL_DIR="/home/databasedumps"

# The Command That does the magick
duplicity ${LOCAL_DIR} b2://${B2_ACCOUNT}:${B2_KEY}@${B2_BUCKET}/${B2_DIR}

unset B2_ACCOUNT
unset B2_KEY
unset B2_BUCKET
unset LOCAL_DIR
