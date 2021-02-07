Some auto pair plugins do this annoying thing

==============================
| = cursor

if(condition) {|}

**ENTER KEY IS PRESSED**

if(condition) {
|}
==============================

Personally, I don't really like that.
My plugin serves to prevent that by checking both the left and right
characters to see if the cursor is between valid pairs, and properly
indenting the brackets if they are.

==============================
| = cursor

if(condition) {|}

**ENTER KEY IS PRESSED**

if(condition) {
    |
}
==============================

The default supported bracket types are '[' and '{'.
To add and remove bracket types, you can modify the g:vim_brackets_pairs variable.
Remember:
Key = Left Pair
Value = Right Pair

Examples:
**ADDING**
let g:vim_brackets_pairs = { '{': '}', '"': '"' }
let g:vim_brackets_pairs['('] = ')'

**REMOVING**
let g:vim_brackets_pairs = remove(g:vim_brackets_pairs, '{')
unlet g:vim_brackets_pairs['{']


