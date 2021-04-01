GNU nano 4.8                                                                                                                     /bin/duplicityBackup.sh
#!/bin/sh

# Backblaze B2 configuration variables
B2_ACCOUNT="App KeyID / Master KeyID"
B2_KEY="ApplicationKEY / MasterKEY"
B2_BUCKET="BucketName"
B2_DIR="Name of the Folder in Cloud to Be Restored"

# Local directory to Restore
LOCAL_DIR="/home/databasedumps"

# The Command that does the Magick
duplicity --force restore --file-to-restore ${B2_DIR} b2://${B2_ACCOUNT}:${B2_KEY}@${B2_BUCKET} ${LOCAL_DIR}

unset B2_ACCOUNT
unset B2_KEY
unset B2_BUCKET
unset LOCAL_DIR
