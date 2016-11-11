redmine_stats
==
A Redmine plugin to get global statistics.

With redmine_stats you can have a global information about issues, and not project specific. See total open/closed issues, the users who have more issues assigned to, the users who close more issues, etc.

You can also use it by project.

![screen1](https://dl.dropboxusercontent.com/u/3304230/do_not_delete/screen1.png)
![screen2](https://dl.dropboxusercontent.com/u/3304230/do_not_delete/screen2.png)

Installation:
==

You can use git clone or download the zip file.

Be sure to put the plugin in the redmine plugin folder with the exact name: "redmine_stats"

You will not need to do any migration

redmine_stats adds a new permission to user roles so that only allowed users can see statistics

Go to Administrator -> Roles & Permissions -> (Select the role you want to give permissions) and in the Project group you'll have the "Access statistics" permission, just enable it and save

A new item in the top menu will appear to access the stats page

Compatibility:
==

This plugin was created to work with redmine 2.5.2, Rails 3.2 and Ruby 2.1, older software versions may have problems
Currently it is known to be incompatible with redmine 2.2 and older.

You will also need a browser supporting html5 canvas. Check if your browser is compatible [here](http://caniuse.com/#feat=canvas)


NOTE:
==

This was developed specifically for the needs of a company So there may be a lot of "normal" features that users may miss... I am opened to suggestions, to add new features, and improve this plugin. Just let me know

