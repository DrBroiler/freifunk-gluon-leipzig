##      GLUON_FEATURES
#               Specify Gluon features/packages to enable;
#               Gluon will automatically enable a set of packages
#               depending on the combination of features listed

GLUON_FEATURES := \
        alfred \
        autoupdater \
        config-mode-geo-location-osm \
        ebtables-filter-multicast \
        ebtables-filter-ra-dhcp \
        mesh-batman-adv-15 \
        mesh-vpn-fastd \
        neighbour-info \
        radvd \
        respondd \
        status-page \
        web-advanced \
        web-model \
        web-node-role \
        web-private-wifi \
        web-wizard

##      GLUON_SITE_PACKAGES
#               Specify additional Gluon/LEDE packages to include here;
#               A minus sign may be prepended to remove a packages from the
#               selection that would be enabled by default or due to the
#               chosen feature flags

GLUON_SITE_PACKAGES := \
        iwinfo 

DEFAULT_GLUON_RELEASE := 1.5+exp$(shell date '+%Y%m%d')
# Allow overriding the release number from the command line

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_IMAGEDIR ?= $(GLUON_OUTPUTDIR)/images

GLUON_PRIORITY ?= 0

GLUON_REGION ?= eu

GLUON_LANGS ?= de en

GLUON_DEPRECATED ?= full

