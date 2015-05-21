---
layout: post
title: "What I Learned in May"
---

h1. {{ page.title }}

h2. 2015 May 20

I am learning "webpack":http://webpack.github.io/. The documentation is pretty terse. Thank you to Pete Hunt for his "webpack-howto":https://github.com/petehunt/webpack-howto.

The app I'm working on is structured sort of like this:

<pre>
   /
   |
   +-- app.js
   |
   +-- config/
   |
   +-- public/
       |
       +-- (static assets, jsx, etc.)
   |
   +-- webpack.config.js
   |
   +-- node_modules/
</pre>

It took me awhile to figure out what exactly is an "entry point" for the app. I'm still not totally clear about it, but I guess that's where webpack looks first (after the config) to start packing... So I created my entry point as includes.js in config. The includes.js had a bunch of requires for jquery, bootstrap, etc.

In my webpack.config.js, I had to specify in module.loaders the loaders I would use for the static assets. I started off by putting the loaders for jquery (and had to expose $ and jQuery) as well as the css, fonts, and images.
