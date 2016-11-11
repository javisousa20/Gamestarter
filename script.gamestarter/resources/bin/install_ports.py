import os
import os.path
import xbmcgui

xbmcgui.Dialog().ok("Gamestarter", "Installing Libretro Ports, please do not power off your Pi and. A working internet connection is needed.")

script_file = os.path.realpath(__file__)
directory = os.path.dirname(script_file)

os.system("wget --no-check-certificate -O /storage/install_extras.sh https://github.com/bite-your-idols/Gamestarter-Pi/raw/master/scripts/install_extras.sh && sh /storage/install_extras.sh ports &> /storage/.kodi/userdata/addon_data/script.gamestarter/gamestarter.log")
os.system("rm /storage/install_extras.sh")

xbmcgui.Dialog().ok("Gamestarter", "Libretro Ports installed, launch them from your favourite frontend.")
