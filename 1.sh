# WE CAN REFERENCE THE $banch VARIABLE FROM STEP 3 IN OUR QUESTION HERE
echo "Create $branch from current branch (c) or from Master (m)"

# -p OPTION PUTS THE PROMPT IN LINE WITH THE COPY; cm BECOMES A NEW VARIABLE ($cm) STORING THE ANSWER
read -p "current (c) / Master (m)?" cm
# THE USER SHOULD EITHER ENTER 'c' OR 'm'; THAT VALUE WILL BE STORED IN $cm

# AND NOW THE if LOGIC
if [ $cm == 'c' ]; then 
	    # CHECKOUT FROM CURRENT, SO...
	        git checkout -b $branch
		# ELSE IF...
	elif [ $cm == 'm' ]; then
		    # CHECKOUT FROM MASTER, SO...
		        git checkout master && git pull origin master && git checkout -b $branch
			    # DEFINITELY SAVED A FEW KEYSTROKES THERE! NOW THE FUN PART...
		    else
			        # IF $cm HAS ANY VALUE OTHER THAN 'c' OR 'm'...
				    cowsay "Fat fingers? Try again, Dipshit!" | lolcat
				        # YOU COULD JUST echo THIS, BUT cowsay AND lolcat ARE THE BEST!
fi
