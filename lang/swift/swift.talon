tag: user.swift
-
# base on the python file
tag(): user.code_imperative
tag(): user.code_object_oriented

# follow this coding guidelines https://google.github.io/swift/#type-variable-and-function-declarations

state var: "var "

variable [<user.text>] [over]:
    insert("var ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    # insert(" ")
    sleep(100ms)

state (const | constant | let): " let "

(constant | let) <user.text> [over]:
    insert("let ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

enum <user.text> [over]:
    insert("enum ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert(" {\n\tcase ")

type <user.text> [over]:
    insert(": ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert(" = ")
    sleep(100ms)



# xcode (check what i can learn from the vscode & jetbrains snippets)
(toggle | title) comment: key(cmd-/)

