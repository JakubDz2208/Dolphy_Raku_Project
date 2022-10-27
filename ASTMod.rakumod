class ASTNode {

}

class AST::TOP is ASTNode {
    has ASTNode @.statements;
}

class AST::Out is ASTNode {
    has $.value;
}