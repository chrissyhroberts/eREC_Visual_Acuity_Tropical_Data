#!/bin/bash

# Start the SSH agent and add your SSH key
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa

# Ensure the PATH includes /usr/sbin
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

# Navigate to the project directory
cd /Users/icrucrob/Documents/GitHub/eREC_Visual_Acuity_Tropical_Data/dashboard

# Log file path
LOGFILE=/Users/icrucrob/Documents/GitHub/eREC_Visual_Acuity_Tropical_Data/dashboard/render_and_push.log

# Render the Quarto document and log output
/usr/local/bin/quarto render index.qmd >> $LOGFILE 2>&1

# Check if the render was successful
if [ $? -eq 0 ]; then
  echo "Render successful at $(date)" >> $LOGFILE
  # Pull any changes from git
  git pull origin main >> $LOGFILE 2>&1
  if [ $? -ne 0 ]; then
    echo "Git pull failed at $(date)" >> $LOGFILE
    exit 1
  fi
  
  # Add changes to git
  git add . >> $LOGFILE 2>&1
  
  # Commit the changes
  git commit -m "Automated render and push" >> $LOGFILE 2>&1
  
  # Check if the commit was successful
  if [ $? -eq 0 ]; then
    # Push the changes to GitHub
    git push origin main >> $LOGFILE 2>&1
    if [ $? -eq 0 ]; then
      echo "Push to GitHub successful at $(date)" >> $LOGFILE
    else
      echo "Git push failed at $(date)" >> $LOGFILE
