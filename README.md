# BackblazeTest
Hello and welcome to my Testing to Backup a Magento DB and its files. Running on a ubuntu 16.04 And how to fix the Duplicity Errors

(*The ones that i get*)

Most is in the .sh files, and they sould be self explanatory but if not. just send a message

## Duplicity 0.8.17 on Ubuntu 16.04

```bash
// first get the correct version
snap install duplicity --classic (edited)

// Then Overwrite the Original duplicity alias ("If there is no default one, still do it to get that nice alias running")
alias duplicity='/snap/bin/duplicity'
```
