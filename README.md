# docker run
docker run -itd \ \
     \t -p 445:445 \ \
     \t -v /mnt/tmp:/smb \ \
     \t --name public-smb \ \
     \t public-smb \ \
     \t /public-smb

# docker-smb-munki
share smb: \\\127.0.0.1\public

Simple SMB share designed specifically for the [Munki Docker container](https://github.com/nmcspadden/docker-munki).


You should have read-write privileges on the share.  Use the appropriate Munki tools (munkiimport, manifestutil, makecatalogs, etc.) to populate the Munki repo.
