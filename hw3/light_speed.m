function [time,distance]=light_speed(kilometri)
  speedInMinutes = 300000*60;
  mile = 1.609;
  time = kilometri ./ speedInMinutes;
  distance = kilometri ./ mile;
  