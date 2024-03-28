# eREC_Visual_Acuity_Tropical_Data

Files to support the eREC inclusion of visual acuity data in Tropical Data surveys

## Issues


* What format will the tropical data identifiers be in (if we include these to link to trop data)?
* Which fields should be required (i.e. so you can’t submit a form until they’re completed? 
* What’s the protocol for people with zero vision? i.e. if you are blind, lost an eye etc? Just do a null test? 
* What is the ‘minimal’ version? I hadn’t yet implemented the minimal logic because I can’t tell the difference between standard and minimal from the original template forms.
* Data entry will be quicker if you change the "SF1b. How long ago did you have surgery to replace glasses or contact lenses?” To a select_one and use ranges like 0-5 years, 6-15 years, 15+ years or similar. 
* What’s the equivalent to the pinhole test in the Peek version? 
* I don’t know what to draw for the pinhole test. i.e. there’s diagrams to help with near/far, uncorrected/corrected.
* If you wanted to, we could programme the system to automatically know where the phone is (I.e. using geofencing). This would be based on providing spatial polygons and using GPS on device to identify current locations. There’s an explanation of this here : https://forum.getodk.org/t/geofencing-in-odk-forms/38378
* For referrals, it may be worth capturing the location of the handset when the data is collected. Addresses could be a bit vague? 
* Alternatively, could use a map to locate home. 
* Names like Zone 1, zone 2 are used more than once in Ethiopia and because they are not unique, they crash the cascading select of regions
* Need to set the methods (Peek, Standard, Minimal) used by each region. Currently randomised. 

## Change Log

### v0.32
* 

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
  

