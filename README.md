# Cumulus theme

# Introduction
The theme is a skeleton of multi language SaaS application built with [Cumulus plugin](https://octobercms.com/plugin/initbiz-cumuluscore).

The simplest way to see what is its doing watch the video:

[![Cumulus demo video thumbnail](https://github.com/initbizlab/oc-cumuluscore-plugin/raw/master/docs/images/youtube_demo_screenshot.png)](https://www.youtube.com/watch?v=Y0-OvGzmP5w)

Installing the theme will install the following plugins:
* all plugins required by [Cumulus plugin](https://octobercms.com/plugin/initbiz-cumuluscore),
* [RainLab.Translate](https://octobercms.com/plugin/rainlab-translate) (for multi-language support) which you definitely should consider for every app you are creating,
* [CumulusDemo](https://octobercms.com/plugin/initbiz-cumulusdemo) which gives you the ability to seed example data for your new app using one command.

By using the theme you can install bare [Cumulus](https://octobercms.com/plugin/initbiz-cumuluscore) application with a single click of a mouse and one command. But remember that this set is just a suggestion, skeleton.

> **[Cumulus](https://octobercms.com/plugin/initbiz-cumuluscore) does not require this theme or [CumulusDemo](https://octobercms.com/plugin/initbiz-cumulusdemo) plugin. It is fully up to you how you use it.**

# Documentation
This theme is an example skeleton of a SaaS application. In conjunction with [Cumulus Demo](https://octobercms.com/plugin/initbiz-cumulusdemo) plugin you can create new app within seconds. Just install the theme and run `php artisan cumulus:seed` command.

> See [Cumulus Demo](https://octobercms.com/plugin/initbiz-cumulusdemo) plugin documentation for more info about the `php artisan cumulus:seed` command.

As I have wrote before **you do not have to use the Cumulus theme or Cumulus Demo plugin to build applications using [Cumulus](https://octobercms.com/plugin/initbiz-cumuluscore)**. Although this is a great place to start and boost the creation of your new SaaS app.

## TL;DR
If you want just see what the [Cumulus plugin](https://octobercms.com/plugin/initbiz-cumuluscore) bare environment can do for you see the video:

[![Cumulus demo video thumbnail](https://github.com/initbizlab/oc-cumuluscore-plugin/raw/master/docs/images/youtube_demo_screenshot.png)](https://www.youtube.com/watch?v=Y0-OvGzmP5w)

or visit the [live demo page](http://cumulusdemo.init.biz/backend).

## Theme config
### Variables
You can configure the theme a little using variables. Those fields can be customized in backend settings:
* website name
* logo
* favicon
* author
* author url
* description

### Translations
For current translations see `config/lang.yaml` file. If you want to add translations to your language just create a PR on GitHub.

If you cannot see the translated string properly, go to Backend settings -> Translate messages and click `Scan for messages`. You can tick the `Purge all messages first` if you do not have translated any messages manually. All messages will be get from `config/lang.yaml` file then.

## Includes
### Assets
The theme is build with:
* [Boostrap 4](http://getbootstrap.com/)
* [Font Awesome 5](https://fontawesome.com/)

### Pages
The theme contains the following pages.

**Public**:
* error pages (403, 404, 503)
* login page
* register page

**System**:
* choose cluster page
* cluster dashboard page
* update profile page

**Feature pages**:

What is more the theme includes example pages for example features. Pages `this` and `that` are for clusters with access to `free` feature and `awesome-stuff` page is for clusters with access `paid` feature. What is more `this` page contains content visible only for clusters that has access to `paid` feature.

### Layouts
The theme contains the following layouts:

* `public` - for public pages like login or register page
* `session-guarded` - for system pages that requires only logged in session
* `cumulus-guarded` - for system pages that requires a user to be signed in and assigned to particular cluster (guarded by `Cumulus Guard` component)
* `free-feature` - for feature pages which are protected by `Feature Guard` so that only those clusters with access to `free` feature can enter them
* `paid-feature` - for feature pages which are protected by `Feature Guard` so that only those clusters with access to `paid` feature can enter them

`free-feature` and `paid-feature` are of course protected by `Cumulus guard` and `Session` components as well.

### Menu (navigation)
The layout contains menu created using [RainLab.Pages](https://octobercms.com/plugin/rainlab-pages) plugin.

The menu looks like this:

![Static menu of Cumulus demo](https://raw.githubusercontent.com/initbizlab/oc-cumulus-theme/master/docs/menu-screenshot.png)
