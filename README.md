# docker run
docker run -itd \\
     -p 445:445 \\
     -v /mnt/tmp:/smb \\
     --name public-smb \\
     public-smb \\
     /public-smb

# docker-smb-munki
share smb: \\\127.0.0.1\public

Simple SMB share designed specifically for the [Munki Docker container](https://github.com/nmcspadden/docker-munki).

To Use:
----
Assuming you have a data-only container called munki-data:  
`docker run -d -p 445:445 --volumes-from munki-data --name smb nmcspadden/smb-munki /munki_repo`

You should have read-write privileges on the share.  Use the appropriate Munki tools (munkiimport, manifestutil, makecatalogs, etc.) to populate the Munki repo.
