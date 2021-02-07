Some auto pair plugins do this annoying thing

if(condition) {|}

Enter key is pressed

if(condition) {
|}

My plugin serves to prevent that by checking both the left and right char to see if it is a valid pair,
then properly indenting the brackets

if(condition) {|}

Enter key is pressed

if(condition) {
    |
}
