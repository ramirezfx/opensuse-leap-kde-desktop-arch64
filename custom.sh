# Install Seafile-Cloud-Sync-Client
# ---------------------------------
zypper -n in seafile-client

# Install Visual Studio
-----------------------
# To Get the download-link, install the Video-Download-Helper-Plugin for your browser. Navigate to https://code.visualstudio.com.
# Navigate to the bottom and dowload the arm-64 Version manually. Then use the Video-Download-Helper to get the link and paste it below:

DLLINK=https://az764295.vo.msecnd.net/stable/e8a3071ea4344d9d48ef8a4df2c097372b0c5161/code-1.74.2-1671533504.el7.x86_64.rpm
wget -O /tmp/code.rpm $DLLINK
zypper -n --no-gpg-checks in /tmp/code.rpm



# Download and install latest Google Chrome-Browser
# -------------------------------------------------
wget -O /tmp/google-chrome-stable-current-amd64.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
zypper -n --no-gpg-checks in /tmp/google-chrome-stable-current-amd64.rpm
