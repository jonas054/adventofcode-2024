BEGIN {
    RS = "mul"
    FS = "[(),]"
    sum = 0
}

END { print sum }

/^\([0-9]{1,3},[0-9]{1,3}\)/ { sum += $2 * $3 }
