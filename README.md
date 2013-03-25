A simple Userscript for Fluid that adds a Read Later button for Instapaper to any tweets containing a URL.

Initial version checks for new tweets every 5 seconds.

# Steps to Install

1. Add ```*instapaper.com*``` to your Fluid Whitelist.
![Whitelist](http://f.cl.ly/items/1p1M1e0I3p1a3h130d3S/url%20whitelist.png)

  You will have to log in the first time you try to save a link.

2. Copy and paste ```send-to-instapaper-fluid.min.js``` into a new Userscript like the one shown below: 
![Userscript](http://f.cl.ly/items/193y342Z3q2E1B1W0j2P/userscript.png)

3. Edit the body style declaration in the [Twitter for minimalist Userstyle](http://craigmod.com/satellite/twitter_for_minimalists/)

  ```body.logged-in {
      background-image: none !important;
      background-color: #333 !important;
  }```

  This makes sure the Read Later buttons (which are iframes) will not have the dark background.
