replace () {
    echo $1 | sed 's=\([0-9]*\)|\([0-9]*\)=while grep -q "\2.*\1" badlists; do sed "/\2.*\1/ s/\2/tmp/;/tmp/ s/\1/\2/;s/tmp/\1/" badlists > tmp; mv tmp badlists; done=' | sh
}

# FILE=example
FILE=input

grep , $FILE > lists
grep '|' $FILE > rules

sed 's/\([0-9]*\)|\([0-9]*\)/grep "\2.*\1" lists/' rules | sh | sort -u > badlists

done=0
while [ $done -eq 0 ]; do
    cp badlists orig-badlists
    for rule in $(cat rules); do
        replace $rule
    done

    echo =================================
    if diff orig-badlists badlists; then
        done=1
    fi
done

for list in $(cat badlists); do
    middle=$(echo $list | sed 's/[^,]//g' | wc -c | xargs -I% echo % / 2 + 1 | bc)
    echo $list | cut -d, -f$middle
done | paste -s -d+ | bc
