# UAVRacing
Student-facing content for UAV Racing course.

This repo's primary purpose is to host the [instructional website](https://bwsi-uav.github.io/website/index.html).

# To edit/publish to the website:

## Initial set up
+ make sure conda is installed
+ clone the website repository locally
+ in the docs folder, create a conda environment in which you will run the website:
  `conda env create -f environment.yml`
  `conda activate uav_publisher`

## Making changes
+ enter your conda environment: `conda activate uav_publisher`
+ cd into your local website directory
+ run `jupyter-notebook` to open the server
+ make any edits and save
+ to test run your site to make sure it won't crash, run `sphinx-build /docs ~/<folder_to_save_site_in`
  + this should build your site
+ cd into the folder in which you saved your site, and run `open index.html`
+ when you are satisfied with your changes, commit them to github (and push, though this is not necessary)
+ in your website directory, run `sh publish.sh`
+ if all goes well, your site should reflect the changes in a minute or two
