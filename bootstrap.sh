#!/usr/bin/env bash

# Download configuration templates for SMART Servers
mkdir /vagrant/templates
wget https://raw.github.com/chb/smart_server/master/settings.py.default -O /vagrant/templates/api_settings.py
wget https://raw.github.com/chb/smart_server/master/bootstrap_helpers/application_list.json.default -O /vagrant/templates/application_list.json
wget https://raw.github.com/chb/smart_server/master/bootstrap_helpers/bootstrap_applications.py.default -O /vagrant/templates/bootstrap_applications.py
wget https://raw.github.com/chb/smart_ui_server/master/settings.py.default -O /vagrant/templates/ui_settings.py
wget https://raw.github.com/chb/smart_sample_apps/master/settings.py.default -O /vagrant/templates/apps_settings.py