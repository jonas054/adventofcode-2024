echo "=== Kotlin ==="
kotlinc both.kt -include-runtime -d both.jar && java -jar both.jar

echo
echo "=== Ruby ==="
rubocop -a > /dev/null
ruby both.rb
