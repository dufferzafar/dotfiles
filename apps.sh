# $DIR would already be defined in the bootstrapper
# and these files lie in the same directory, so things are cool :)

# Facebook Path Picker
chmod +x "$DIR/apps/fpp/fpp"
ln -sf "$DIR/apps/fpp/fpp" /usr/local/bin/fpp

# nginx-ensite - similar to apache's a2ensite
ln -sf "$DIR/apps/nginx_ensite/nginx_ensite" /usr/local/bin/nginx_ensite
ln -sf "$DIR/apps/nginx_ensite/nginx_dissite" /usr/local/bin/nginx_dissite
source "$DIR/apps/nginx_ensite/bash_completion.d/nginx_ensite"
