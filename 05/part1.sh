# FILE=example
FILE=input

grep , $FILE > lists
grep '|' $FILE > rules

for bad_list in $(sed 's/\([0-9]*\)|\([0-9]*\)/grep "\2,.*\1" lists/' rules | sh | sort -u); do
    grep -v "^${bad_list}$" lists > tmp
    mv tmp lists
done

for list in $(cat lists); do
    middle=$(echo $list | sed 's/[^,]//g' | wc -c | xargs -I% echo % / 2 + 1 | bc)
    echo $list | cut -d, -f$middle
done | paste -s -d+ | bc
