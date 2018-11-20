# SCRIPT DE TRAVAIL : LANCE LA VERSION GIT SYNCHRONISEE
# WS-AUTOLOAD.LISP ASSOCIE : DANS AutoLoadsOM/ImproteK-Git


# 2nd ImproteK
#open -a /Applications/Max64II.app /Users/jnika/Desktop/IMPROTEK/ImproteK_170516/Max-Interface/ImproteK-InterfaceAudio\ gn13.maxpat
#sleep 11
#open -a /Applications/Max64II.app /Users/jnika/Desktop/IMPROTEK/ImproteK_170516/Max-Interface/it_set_udp_2.maxpat
#sleep 2
#open -a /Applications/OM\ 6.12-2/OM\ 6.12-2.app

# 3rd ImproteK
#open -a /Applications/Max64III.app /Volumes/Polke/IRkam/Improtech/ImproteK_170516/Max-Interface/ImproteK-InterfaceAudio\ gn08.maxpat
#sleep 11
#open -a /Applications/Max64III.app /Volumes/Polke/IRkam/Improtech/ImproteK_170516/Max-Interface/it_set_udp_3.maxpat
#sleep 2
#open -a /Applications/OM\ 6.12-3/OM\ 6.12-3.app

# safe ableton editin
#sleep 30
#open -a /Applications/Max\ 6.1/Max\ VII.app /Users/nouno/Documents/IRcam/PRod/Fujikura/MAx/granular_m4l_16\ for\ osk\ singing\ 00.maxpat
#
# Ableton Live
#sleep 35
#open -a /Applications/Ableton\ Live\ 9\ Suite.app /Users/nouno/Documents/IRcam/PRod/Fujikura/LIve/Solaris\ Main\ Session\ 00\ Project/Solaris\ Main\ Session\ 12.als
# fAbleton Live
##sleep 60
#open -a /Applications/Ableton\ Live\ 9\ Suite\ II.app /Volumes/LaCie-Quadra2T-Son3/Solaris\ Simulation\ Project/Solaris\ Simulation\ 07.als
#
#

#execPath=$(readlink $(dirname $0))
#echo chemin absolu  : "$execPath"
execPath='/Users/jnika/Documents/Git Projects/ImproteK/2-AudioInterface_Max/'
cd "$execPath"
open -a /Applications/Max64.app ./ImproteK-InterfaceAudio.maxpat
sleep 11
open -a /Applications/Max64.app ./Sources/interfaces-controls/it_set_udp_1.maxpat
sleep 2
#copier ./WS-autoload dans /Applications/OM\ 6.12/patches
cp ./AutoLoadsOM/ImproteK-Git/WS-autoload.lisp /Applications/OM\ 6.12/patches
sleep 4
#lancerOM
open -a /Applications/OM\ 6.12/OM\ 6.12.app
sleep 4
#supprimer autoload
rm /Applications/OM\ 6.12/patches/WS-autoload.lisp