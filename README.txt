This readme was last updated 2012-10-27 by AMR.

PROGRAM DESCRIPTION:
The program 'tem_correct_gui' is meant to adjust images from the JOEL 2100 TEM, which sometimes have bad quartiles.

AUTHOR:
Andrew Rasmussen (andyras@gmail.com), 2011-12-12

FILES:
0) this readme
1) tem_correct_gui.m
2) tem_correct_gui.fig

REQUIREMENTS TO RUN:
1) MATLAB
2) MATLAB image processing toolbox

ASSUMPTIONS ABOUT IMAGE FILES:
1) they are square
2) JPEG format (.jpg, .JPG, .jpeg, .JPEG extension)

OPERATING SYSTEMS:
1) Linux (Ubuntu, Arch): runs fine, and GUI is optimized
2) Windows (7): runs fine, GUI buttons may be weird sizes
3) Mac OS: untested

USING THE PROGRAM:
1) Use the file browser to find the image you want to modify, or enter a file path manually.
2) Press 'Load!' to load the image into the viewer.
3) Adjust the sliders to change the quartile of the image you want.  Positive values make a square lighter, negative values darker.  Quartiles correspond to QI (top right), QII (top left), QIII (bottom left), QIV (bottom right) familiar from mathematics.
4) Press 'Do it to it!' to apply all the quartile modifications.  A new version of the image will appear in the viewer, but the difference may be invisible to the eye unless the change is >= 3 units.
5) When you are satisfied with the image, press 'Save!' to save the image.  The new image name will be prepended with 'corrected_' by default.  You can adjust the output file name in the 'Output File' field.
