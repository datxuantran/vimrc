{
    "vim.leader": "<space>",
    "vim.normalModeKeyBindingsNonRecursive": [
        {
            "before": [
                "<Leader>",
                "t",
                "t"
            ],
            "commands": [
                ":tabnew"
            ]
        },
        {
            "before": [
                "<Leader>",
                "t",
                "n"
            ],
            "commands": [
                ":tabnext"
            ]
        },
        {
            "before": [
                "<Leader>",
                "t",
                "p"
            ],
            "commands": [
                ":tabprev"
            ]
        },
        {
            "before": [
                "<Leader>",
                "y",
                "y"
            ],
            "after": [
                "\"",
                "+",
                "y",
                "y"
            ]
        },
        {
            "before": [
                "<Leader>",
                "y",
                "e"
            ],
            "after": [
                "\"",
                "+",
                "y",
                "$"
            ]
        },
        {
            "before": [
                "<Leader>",
                "y",
                "w"
            ],
            "after": [
                "\"",
                "+",
                "y",
                "w"
            ]
        },
        {
            "before": [
                "<Leader>",
                "p",
            ],
            "after": [
                "\"",
                "+",
                "p",
            ]
        },
        {
            "before": [
                "<Leader>",
                "a",
                "e"
            ],
            "after": [
                "A",
            ]
        },
        {
            "before": [
                "<Leader>",
                "i",
                "b"
            ],
            "after": [
                "I",
            ]
        },
        {
            "before": [
                "<Leader>",
                "u",
                "u"
            ],
            "after": [
                "<C-u>",
                "z",
                "z"
            ]
        },
        {
            "before": [
                "<Leader>",
                "u",
                "d"
            ],
            "after": [
                "<C-d>",
                "z",
                "z",
            ]
        },
        {
            "before": [
                "<Leader>",
                "m",
                "r"
            ],
            "after": [
                "v",
                "a",
                "b",
            ]
        },
        {
            "before": [
                "<Leader>",
                "m",
                "c"
            ],
            "after": [
                "v",
                "a",
                "B",
            ]
        },
    ],
    "vim.visualModeKeyBindingsNonRecursive": [
        {
            "before": [
                "<Leader>",
                "y",
            ],
            "after": [
                "\"",
                "+",
                "y",
            ]
        },
    ]
}