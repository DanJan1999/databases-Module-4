log_file = open("um-server-01.txt") #This line opens the text file into this python file and names it "log_file."


def sales_reports(log_file): #This line is defining a new function called "sales_reports" and is passing it the parameter "log_file" which is also the name they gave the text file. Though you would not have to pass in a parameter with that same name.
    for line in log_file: #This line starts a FOR IN loop on the file being passed in
        line = line.rstrip() #This line sets a line of the file equal to that same line but without the charecters at the end of the string.
        day = line[0:3] #This line sets the value of day equal to the first 3 characters of the line.
        if day == "Mon": #This line checks to see if the day is "Tue." (Edited to Mon as instructed.)
            print(line) #This line specifies that if the conditions are met (i.e. day == "Tue"), that it should print the line in the console.


sales_reports(log_file) #This line runs the "sales_report" function and invokes it with "log_file."


def many_melons(log_file):
    for line in log_file:
        line = line.rstrip()
        qt = line[16:18]
        qt = int(qt)
        if qt > 10:
            print(line)

many_melons(log_file)