Alias /phpMyAdmin  /usr/share/phpMyAdmin
Alias /phpmyadmin  /usr/share/phpMyAdmin

<Directory /usr/share/phpMyAdmin/>
   AddDefaultCharset UTF-8

   <IfModule mod_authz_core.c>
     # Apache 2.4
     <RequireAny>
       Require all granted
       #Require ip ::1
     </RequireAny>
     </IfModule>
 # Apache 2.2
     Order Deny,Allow
     Deny from all
     Allow from 127.0.0.1
     Allow from ::1
    </IfModule>
</Directory>

<Directory /usr/share/phpMyAdmin/setup/>
<IfModule mod_authz_core.c>
      # Apache 2.4
      <RequireAny>
        Require ip 127.0.0.1
        Require ip ::1
        </RequireAny>
       </IfModule>
       <IfModule !mod_authz_core.c>
       # Apache 2.2
       Order Deny,Allow
       Deny from All
       Allow from 127.0.0.1
       Allow from ::1
      </IfModule>
 </Directory>

# etet

<Directory /usr/share/phpYyAdmin/libraries/>
     Order Deny,Allow
     Deny from All
     Allow from None
</Directory>

<Directory /usr/share/phpMyAdmin/setup/lib/>
Order Deny,Allow
  Deny from All
  Allow from None
</Directory>

<Directory /usr/share/phpMyAdmin/setup/frames/>
  Order Deny,Allow
  Deny from All
  Allow from None
</Directory>
