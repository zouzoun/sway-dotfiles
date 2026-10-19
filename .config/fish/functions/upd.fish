function upd --wraps='sudo emerge -auDN @world && flatpak update' --description 'alias upd=sudo emerge -auDN @world && flatpak update'
    sudo emerge -auDN @world && flatpak update $argv
end
