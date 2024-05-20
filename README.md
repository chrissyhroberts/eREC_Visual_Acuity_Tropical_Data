# eREC_Visual_Acuity_Tropical_Data

Files to support the eREC inclusion of visual acuity data in Tropical Data surveys

## Issues

* None as of 2024-04-29

#### * To do

* Nothing at present

## Change Log

### v1.05

* Fixes 'can't see' button by type coercion to strings in the intent action. 

### v1.04

* Activates 'can't see' button

### v1.02, v1.03 

* Iterative attempts to get 'can't see button active'.

### v1.01
* Adds Peek Vision logo to the Splash Screen via logo_cluster.png

### v1.00

* Changes choice of Peek, Snellen (Standard) and Snellen (Rapid) to a select one with default Peek
* Makes all demographics required
* Changes default capture accuracy on geopoint to 10m instead of 5m
* Reduces complexity of choice filters when selecting countries and clusters (removes cascading select for region, district etc.)
* Adds v1.00 setup guide (private)

### v0.35

* Adds audit trail, allowing for precise time-stamping of enumerator activity
* Adds requirement for user to identify themselves when starting a new form submission
* Updates testing so that corrected near VA test is used only when the uncorrected near VA in both eyes are worse than N6
* Fixes an error where the form crashed when districts with identical names existed in different regions or countries

### v0.34

* Updates the referrals so that refferal is indicated when pinhole Snellen test vision is lower than 6/12 in both eyes OR when pinhole Peek test logMar > 0.3 in both eyes.
  
### v0.33

* Adds visual guides for pinhole test
* Adds updated versions of all visual guides
* Adds pinhole distance vision test for Peek tests
  
### v0.32

* Corrects an issue where NV distance should have been 0.4 m but was 0.45 m in visual assistance png files
* Removes participant IDs as these will not be used in production
* Adds a splash screen with logo cluster, title and version number
* Makes 6/18, 6/60 and 3/60 Snellen chart testing happen only for 'standard' and not for 'minimal' method
* Changes "How long ago did you have surgery to replace glasses or contact lenses?” to a select_one and use ranges 0-5, 6-10, 11-15, 16-20, 21+ years
* Adds a geopoint question to locate handset at form submission

### v0.31 

* Changes the navigation of the demographics for more efficient data entry
* Changes the aesthetic of the Snellen chart data entry
* Changes logic for pinhole test
  * New logic is (a) OR (b)
    * a) distance VA < 6/12 in both eyes AND no distance correction
    * b) corrected VA <6/12 in both eyes 
* Changes logic for corrected near VA test
* New logic is uncorrected near VA  is "cannot see N6" in both eyes and has near vision correction.


### v0.30 
* Changes the testing order so that it tests the right eye, then the left eye, not the other way around.
* Corrects a discrepancy between the word and image in the uncorrected distance VA test for the left eye, the arrow should be pointing to the left eye.
* Corrects an issue where corrected VA was not being tested in some cases when it should
  * New logic is distance correction AND both eyes <6/12
  

### v0.20
* Updates the system to use the Peek 'plugin' app. This has to be provided by Peek Vision
* Not included in repo as licensed - `visiontest.apk`
* Adds skip logic based on WHO specification
* Adds visual guides for which eye to test and how

### v0.10
* Implements initial draft form
* Performs basic distance visual acuity test via Peek app (Playstore version)
  

