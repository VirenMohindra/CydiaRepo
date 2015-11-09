# CydiaRepo
Basic setup for a Cydia repo -- runs with bash scripts [my personal repo] -- https://virenmohindra.github.io/

## Introduction
Vanilla setup for a cydia repo which can be used to host your own packages. Basic proficiency in terminal, bash, and git will help a lot.

## Set Up

If you want to host this on GitHub follow these instructions:

1. Create a new repo on your github with your_username.github.io
for example mine will be : virenmohindra.github.io
2. Push everything in this master repo into your repo.
3. Add a basic HTML file.


	If you create iOS themes you only need to focus on the /projects/ directory. Add your folder in and you can run!


A few files you **will** need to change:

1. Modifying the *control* file to suit your needs
2. *Packages* should be modified too
3. *Release* refers to if you're switching out the version

After cd'ing into your specific directory
```
> chmod +x ./packages.sh ; chmod +x ./push.sh ; chmod +x ./update.sh ; chmod +x ./remove.sh ;
```
This will make your bash scripts executable


Run this bash script
```
> ./update.sh
```

PUSH to your repo and you're set.

Check if everything is working by adding the repo yourself.


*If something doesn't work please message me and I'll help you out.
* I have a certain dependency for my theme -- Anemone. If you want to create a theme keep it like that or switch it out with another dependency. You can look for their names under their Cydia names - eg : for this theme [VMTheme] the dependency name will be 

com.virenmohindra.vmtheme

URL but backwards!


_________

Contact me if you need any help! [Or if you have any requests]
http://virenmohindra.me/

_________

#To Do List
1. Add icons to repo debs + instructions
2. Changelogs!
3. Make it look beautiful