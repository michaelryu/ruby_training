def ftoc(f)
	c = (f - 32.0)/1.8	
	c.round(2)
end
def ctof(c)
	f = c * 1.8 + 32.0
	f.round(2)
end