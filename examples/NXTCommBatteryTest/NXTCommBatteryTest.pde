import processing.serial.*;

/*
 * NXTCommBatteruTest.pde
 *
 * Created on 07 de March 2007
 *
 *  NXTComm: A java library to control the NXT Brick.
 *  This is part a of the DiABlu Project (http://diablu.jorgecardoso.org)
 *
 *  Copyright (C) 2007  Jorge Cardoso
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 *  You can reach me by
 *  email: jorgecardoso <> ieee org
 *  web: http://jorgecardoso.org
 */

import pt.citar.diablu.processing.nxt.*;

PFont font;

int power = 50;
LegoNXT lego;


void setup() {
  size(400, 400);


  lego = new LegoNXT(this, "/dev/tty.NXT-DevB");
  println(lego);
  frameRate(10);
}


void draw() {
  background(0);  

  textAlign(CENTER);


  if ( lego != null ) {
    int batteryLevel = lego.getBatteryLevel();

  //println(batteryLevel);
    // draw battery level;
    fill(255);
    rect(170, height, 60, -batteryLevel/90);
    text("Battery: " + batteryLevel + " mv", 140, height-batteryLevel/90);
  }
}

