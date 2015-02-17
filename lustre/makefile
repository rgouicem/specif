all: 


edge.ec: edge.lus
	lus2ec $< EDGE

%.c: %.ec
	ec2c $< -loop -v

%: %.c %.h
	gcc $<
