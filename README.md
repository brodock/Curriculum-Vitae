Curriculum Vitae
================

This is a Sinatra application used to generate my personal Curriculum Vitae.

It uses a template originally designed by Matt Brown (http://thingsthatarebrown.com), downloaded from http://sampleresumetemplate.net with some modifications.


Running
-------

To run it on a local machine, simple run <b>rackup</b> (WEBrick) command, <b>passenger</b> (nginx), <b>shotgun</b> (Thin), the last one requires you to install <b>shotgun</b> gem first.


Future Version
--------------

* Multi-language support (by reading different yml files and templates) - Partially implemented
* HTML5 layout
* PDF export (PDFKit or Prawn, haven't decided yet)
