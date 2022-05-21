username=user
#disable kwallet - why is it baked into plasma ?!?!
sed -i 's/Enabled=true/Enabled=false/' /mnt/home/$username/.config
