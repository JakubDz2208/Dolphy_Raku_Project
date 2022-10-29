grammar Comments {
    regex ws {
        <!ww> [
          \s*
        ]
    }

    rule comment {
        '#' \N*
    }
}