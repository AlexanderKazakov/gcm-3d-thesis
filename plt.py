#!/usr/bin/python

import matplotlib.pyplot as pl
import numpy

def E(x):
	e = 200
	if(x >= 0.01 and x < 0.0125):
		return e/3
	if(x >= 0.0125 and x < 0.0150):
		return e/10
	if(x >= 0.015):
		return e/30
	else:
		return e;


final = 0.025

x = numpy.zeros(10000)
y = numpy.zeros(10000)
for i in range(10000):
	x[i] = final/10000*i
	y[i]= y[i-1] + E(x[i])*final/10000

pl.figure()
pl.xlabel('Strain, %')
#pl.ylim(0.0,3e-2)
pl.ylabel('Stress, GPa')
pl.grid()
pl.plot(x,y)
pl.show()


