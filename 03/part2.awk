BEGIN { RS = "do" }

/^n't\(\)/ { next }

/./ { print }
