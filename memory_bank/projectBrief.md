# Foodie — Food Delivery App

## What It Is
A Flutter food delivery app built by Marcel
Users browse restaurants, filter by cuisine, build a cart, place orders,
and track delivery in real time.

## Current Status
In active development. Profile setup complete. Restaurant feature UI complete.
Currently building: Restaurant service, notifier, and Home screen.

## Key Business Rules
- Users must complete profile setup before accessing home screen
- Phone verification is optional during profile setup (can skip)
- Work address is optional (Step 5 can be skipped via nice mom button)
- AppBar Skip saves all collected data and goes home regardless of completion
- Delivery address toggles between Home ("My Apartment") and Work ("My Office")
  — only shows toggle if user has a work address (hasWork computed property)
- At least 3 cuisines must be selected in Step 6 before proceeding
- Spice level is optional (no blocking validation in Step 4)