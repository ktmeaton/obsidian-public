---
title: Nokogiri
type: [[Tool]]
tags:
  - 📝/🌱
---

# Nokogiri

## Summary

Nokogiri is a [[Ruby]] module for working with [[XML]] and [[HTML]].

Whenever I try to build [[Jekyll]] sites, I almost always get errors relating to [[Nokogiri]].

```text
An error occurred while installing nokogiri (1.10.10), and Bundler cannot continue.
```

Which sometimes occurs because of ```Insecure world writable dir``` warnings. Which can be fixed with:
```bash
gem install nokogiri -v '1.10.10' --source 'https://rubygems.org/'
```