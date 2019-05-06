FROM jenserat/samba-publicshare

RUN mkdir /public-smb
RUN chown -R nobody:nogroup /public-smb
RUN chmod -R ugo+rwx /public-smb

ADD smb.conf /etc/samba/smb.conf
