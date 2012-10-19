# ILV Web Technologies 1
# Exercise 2a
#
# Filter all IP addresses from the given log file and return the 10 IPs with the most hits.
#
# It's not good style to code in one line, we only did it to learn Ruby and play around!
#
# Author: Richard Fussenegger, rfussenegger-mmt-m2012@fh-salzburg.ac.at
# Author: Markus Deutschl, mdeutschl-mmt-m2012@fh-salzburg.ac.at
require 'open-uri';ips=Hash.new;open('http://multimediatechnology.at/~bjelline/access_log'){|f|f.each_line{|line|ip=line.match(/(([0-9]{1,3}\.){3,3}[0-9]{1,3})/)[1];ips[ip]=ips[ip]?(ips[ip]+1):(1)}};puts ips.sort_by{|k,v|v}.reverse.first 10