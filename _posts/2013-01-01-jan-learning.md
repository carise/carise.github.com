---
layout: post
title: "What I Learned in January"
---

h1. {{ page.title }}

h2. 2013 Jan 8

"How to install Sencha Touch 2 and start a new app":http://iamcarise.wordpress.com/2013/01/08/sencha-touch-2/ 


h2. 2013 Jan 9

Using find with regexes, e.g.

@find . -regex ".*\.jsp.?" -regextype posix-extended@

Abstract class vs. interfaces
 - abstract class and implementing class strong relationship, e.g. "Dog" is-a "Animal"
 - abstract class is good for inheritance (e.g. adding new methods doesn't require all implementing classes to implement the new methods)
 - interface is good for when class won't change often
 - want something like multiple inheritance, then use an interface

Determining a type of object in javascript (ECMAScript standard):

@Object.prototype.toString.call(theobject);@


h2. 2013 Jan 10

A high level view of MongoDB


h2. 2013 Jan 11

"Vista recovery disc":http://www.heidoc.net/joomla/technology-science/microsoft/57-windows-vista-direct-download-links 


h2. 2013 Jan 14

I can use Vatha Kuzhambu podi in place of sambar powder. :)


h2. 2013 Jan 15

"Design everything you do" -- Stella Lai ("Making the Transition from Development to Design", P.J. Onori)


Vim:
1) Use @{@ and @}@ to move between paragraphs; use @{d}@ to delete it
2) Use "@m@"(marker name) to set marker boundaries, then @[command]`[marker name]@ to cut/copy that text. E.g. do @ma@ and @mz@, then @y`a@ to copy. I can also do this with @d`a@ to cut.


h2. 2013 Jan 16

"@volatile@ in Java":http://jeremymanson.blogspot.fr/2008/11/what-volatile-means-in-java.html 

The @volatile@ modifier will ensure communication between two threads, so that if one thread writes to a volatile variable, the second thread that reads it already knows what's going on with that particular volatile variable.

"more on @volatile@":http://jpbempel.blogspot.com/2012/10/volatile.html 

"eoscount.com":http://eoscount.com/ 


h2. 2013 Jan 17

For later reading:

"Backbone.js views (Ian Storm Taylor)":http://ianstormtaylor.com/rendering-views-in-backbonejs-isnt-always-simple/
"Views (Addy Osmani)":http://addyosmani.github.com/backbone-fundamentals/#views-1

"Backbone.js examples (Addy Osmani)":http://addyosmani.github.com/backbone-fundamentals/#exercise-2-book-library---your-first-restful-backbone.js-app

Set up a github page using Jekyll: "By Mojombo":https://github.com/mojombo/jekyll/wiki/usage 


h2. 2013 Jan 18

@git push origin master@

Also, basic textile markup

h2. 2013 Jan 21

I was getting the following error in resin pro 3.0.24 when trying to transfer a document (saved as a blob in Oracle 11.2g):

@java.io.CharConversionException: illegal utf8 encoding at 0xe3@
 @at com.caucho.vfs.i18n.UTF8Reader.read(UTF8Reader.java:110)@
 @at com.caucho.server.connection.ToCharResponseStream.write(ToCharResponseStream.java:301)@
 @at com.caucho.server.connection.ServletOutputStreamImpl.write(ServletOutputStreamImpl.java:68)@
@...@

Solution: I have to set my environment variable for NLS_LANG=AMERICAN_AMERICA.UTF8.

Windows:
@setx NLS_LANG AMERICAN_AMERICA.UTF8 /M@

h2. 2013 Jan 23

Vim non-greedy matching: Instead of @.*@ use @.\{-}@

h2. 2013 Jan 29

Use @javap@ to disassemble Java classes into bytecode:

@javap -verbose -c -private HelloWorld@

@-c@ shows bytecode display
@-private@ shows all members (even private methods)
@-verbose@ shows more stuff, like the constant pool


