dn: uid=useradd8,ou=passwd,dc=example
objectClass: top
objectClass: posixAccount
objectClass: shadowAccount
objectClass: organizationalPerson
objectClass: inetOrgPerson
uid: useradd8
userPassword:: e0NSWVBUfWFiSm5nZ3hoQi95V0k=
uidNumber: 43507
gidNumber: 43601
cn: useradd8
homeDirectory: /home/useradd8
loginShell: /bin/sh
shadowLastChange: 13602
shadowInactive: -1
shadowExpire: -1
shadowMin: 0
shadowMax: 99999
shadowWarning: 7
shadowFlag: 0
sn: useradd8
givenName: useradd8
displayName: useradd8
gecos: useradd8,,,

dn: cn=useradd8,ou=group,dc=example
objectClass: top
objectClass: posixGroup
cn: useradd8
gidNumber: 43601

dn: cn=gruseradd8,ou=group,dc=example
objectClass: top
objectClass: posixGroup
cn: gruseradd8
gidNumber: 43600
memberUid: useradd8

