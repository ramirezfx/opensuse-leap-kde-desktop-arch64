ARG VER=latest
FROM ramirezfx/opensuse-leap-kde-baseimage-arm64:$VER
ENV SHELL=/bin/bash

# Install minimum needed packages
RUN zypper -n in git cups wget

# Download and install latest Nomachine
RUN wget -O /tmp/nomachine.rpm "https://www.nomachine.com/free/linux/64/rpm" && zypper -n --no-gpg-checks in /tmp/nomachine.rpm

# ADD nxserver.sh
RUN wget -O /nxserver.sh https://github.com/ramirezfx/opensuse-leap-kde-desktop-arch64/raw/main/nxserver.sh && chmod +x /nxserver.sh

# Custom Packages And Sripts:
RUN wget -O /custom.sh https://github.com/ramirezfx/opensuse-leap-kde-desktop-arch64/raw/main/custom.sh && chmod +x /custom.sh
RUN /custom.sh

# Add language-support:
RUN wget -O /tmp/languages.txt https://github.com/ramirezfx/opensuse-leap-kde-desktop-arch64/raw/main/lang-kde.txt && xargs -a /tmp/languages.txt zypper -n --no-gpg-checks in

ENTRYPOINT ["/nxserver.sh"]
