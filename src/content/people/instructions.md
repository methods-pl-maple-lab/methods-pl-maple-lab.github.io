+++
[extra]
name = "Your name here"
lab = "Your primary lab affiliation"
lab_url = "A link to your primary lab"
role = "The lab role. Pick one of: faculty, member, collaborator"
title = "This is for faculty only. Pick one of: director, affiliate"
service = "If you have a service role within MaPLE, list it here"
interests = "A list of topics that capture your current research interests"
website = "A link to your professional website"
institution1 = "Your primary institution, e.g., university, company, etc."
institution2 = "Your secondary institution or a subsidiary of the instituiton (e.g., a college within a university), if relevant"
pub_title = "For students, pick one representative publication of yours to advertise"
pub_url = "URL for the publication"
weight = 100
+++

# How to add yourself to People

Adding yourself to the people page is a simple matter of: 

1. Forking [this repository](https://github.com/uvm-maple/uvm-maple.github.io),
1. Adding the appropriate folders and files to your fork,
2. Editing the files to reflect the information you want in them, and
3. Sending a pull request to the website to build and merge.

You can edit your fork directly on GitHub, or you can clone the forked repository to your local machine. The instructions below include information for either approach. 

<div class="long">

1. Create a folder under people using your surname (if you have more than one, use underscores for spaces). <br/><small> For example, if we assume you are working from the top level of this repository on a Mac and your name is Xena Warrior Princess, running <br/>`mkdir src/content/people/warrior_princess`<br/> should do the trick.</small><br/> You can also manually 
3. Add a headshot named `headshot.jpg` to the folder you just created. _The file must have the name `headshot.jpg` or it will not render_. 
2. Copy this file into your new people directory as `index.md`, e.g., `cp src/content/people/instructions.md src/content/people/warror_princess/index.md`.
3. Edit the front matter of this file (i.e., the stuff between the two `+++` strings) as appropriate. This file includes all of the possible information you can include. If you do not want to include a piece of information, you should delete that entry. For example, you may not have any publicly available publications yet. 

</div>

