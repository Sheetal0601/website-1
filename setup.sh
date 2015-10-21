#!/bin/bash
# This script installs the necessary dependencies on Fedora

sudo dnf group install "C Development Tools and Libraries" -y
sudo dnf install ruby-devel zlib-devel libxml2-devel libxslt-devel nodejs -y
# FeedParser is used for RSS feed
sudo dnf install python-feedparser -y
# spec dependencies for Capybara & Webkit testing
sudo dnf install rubygem-rack rubygem-capybara rubygem-rspec -y
# We need pre-release because of hooking rss.py script into the build itself
gem install jekyll --pre
gem install nokogiri -- --use-system-libraries
gem install jekyll-lunr-js-search
gem install jekyll-sitemap
