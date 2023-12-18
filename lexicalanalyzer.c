#include <stdio.h>


bool isPunctuator(char ch)
{
    if (ch == ' ' || ch == '+' || ch == '-' || ch == '*' || 
        ch == '/' || ch == ',' || ch == ';' || ch == '>' || 
        ch == '<' || ch == '=' || ch == '(' || ch == ')' || 
        ch == '[' || ch == ']' || ch == '{' || ch == '}')
        return (true);
    return (false);
}


bool isOperator(char ch)
{
    if (ch == '+' || ch == '-' || ch == '*' || 
        ch == '/' || ch == '>' || ch == '<' || 
        ch == '=')
        return (true);
    return (false);
}
 
bool validIdentifier(char* str)
{
    if (str[0] == '0' || str[0] == '1' || str[0] == '2' ||
        str[0] == '3' || str[0] == '4' || str[0] == '5' || 
        str[0] == '6' || str[0] == '7' || str[0] == '8' || 
        str[0] == '9' || isPunctuator(str[0]) == true)
        return (false);
    return (true);
}

bool isKeyword(char* str)
{
    if (!strcmp(str, "if") || !strcmp(str, "else") ||
        !strcmp(str, "while") || !strcmp(str, "do") || 
        !strcmp(str, "break") || 
         !strcmp(str, "continue") || !strcmp(str, "int")
        || !strcmp(str, "double") || !strcmp(str, "float")
        || !strcmp(str, "return") || !strcmp(str, "char")
        || !strcmp(str, "case") || !strcmp(str, "char")
        || !strcmp(str, "sizeof") || !strcmp(str, "long")
        || !strcmp(str, "short") || !strcmp(str, "typedef")
        || !strcmp(str, "switch") || !strcmp(str, "unsigned")
        || !strcmp(str, "void") || !strcmp(str, "static")
        || !strcmp(str, "struct") || !strcmp(str, "goto"))
        return (true);
    return (false);
}

bool isNumber(char ch)
{
    if (ch == '0' || ch == '1' || ch == '2' || ch == '3' || 
        ch == '4' || ch == '5' || ch == '6' || ch == '7' || 
        ch == '8' || ch == '9')
        return (true);
    return (false);
}


void parse(char* str) {
    int left = 0, right = 0;
    int len = strlen(str);

    while (right <= len) {
        if (!isDelimiter(str[right]))
            right++;

        if (isDelimiter(str[right]) || right == len) {
            char* subStr = subString(str, left, right - 1);

            if (right != len && isOperator(str[right]))
                printf("'%c' IS AN OPERATOR\n", str[right]);
            else if (isKeyword(subStr))
                printf("'%s' IS A KEYWORD\n", subStr);
            else if (isInteger(subStr))
                printf("'%s' IS AN INTEGER\n", subStr);
            else if (isRealNumber(subStr))
                printf("'%s' IS A REAL NUMBER\n", subStr);
            else if (validIdentifier(subStr))
                printf("'%s' IS A VALID IDENTIFIER\n", subStr);
            else
                printf("'%s' IS NOT A VALID IDENTIFIER\n", subStr);

            left = ++right;
        }
    }
}

int main() {
    char str[100] = "int a = b + 1c; ";
    parse(str);
    return 0;
}
