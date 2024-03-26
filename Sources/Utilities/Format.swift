import Foundation

enum Color: String {
    case red = "\u{001B}[31m"
    case green = "\u{001B}[32m"
    case yellow = "\u{001B}[33m"
}

let header = [
    "Name", "Type1", "Type2", "Ability1", "Ability2",
    "Primary Color", "Habitat", "Evolution Stage",
    "Height", "Weight"
]

let formattedHeader: String = header.map { formatString($0) }.joined() + "║"

func formatString(_ inputString: String, _ color: Color? = nil, _ lenght: Int = 18) -> String {
    var formattedString: String = inputString
    let spacesToAdd = max(0, lenght - formattedString.count)
    if color != nil {
        formattedString = "\(color!.rawValue)\(formattedString)\u{001B}[0m"
    }
    let spaces = String(repeating: " ", count: spacesToAdd)
    return "║ " + formattedString + spaces
}

func printHeader() {
    print()
    printLine(formattedHeader.count)
    print(formattedHeader)
    printLine(formattedHeader.count)
}

func printLine(_ lenght: Int) {
    print(String(repeating: "═", count: lenght))
}

func printCongratulations() {
    print(
    """
        \u{001B}[32m
        ::::::::   ::::::::  ::::    :::  ::::::::  :::::::::      :::     ::::::::::: :::    ::: :::            :::     ::::::::::: :::::::::::  ::::::::  ::::    :::  ::::::::  :::
       :+:    :+: :+:    :+: :+:+:   :+: :+:    :+: :+:    :+:   :+: :+:       :+:     :+:    :+: :+:          :+: :+:       :+:         :+:     :+:    :+: :+:+:   :+: :+:    :+: :+:
       +:+        +:+    +:+ :+:+:+  +:+ +:+        +:+    +:+  +:+   +:+      +:+     +:+    +:+ +:+         +:+   +:+      +:+         +:+     +:+    +:+ :+:+:+  +:+ +:+        +:+
       +#+        +#+    +:+ +#+ +:+ +#+ :#:        +#++:++#:  +#++:++#++:     +#+     +#+    +:+ +#+        +#++:++#++:     +#+         +#+     +#+    +:+ +#+ +:+ +#+ +#++:++#++ +#+
       +#+        +#+    +#+ +#+  +#+#+# +#+   +#+# +#+    +#+ +#+     +#+     +#+     +#+    +#+ +#+        +#+     +#+     +#+         +#+     +#+    +#+ +#+  +#+#+#        +#+ +#+
       #+#    #+# #+#    #+# #+#   #+#+# #+#    #+# #+#    #+# #+#     #+#     #+#     #+#    #+# #+#        #+#     #+#     #+#         #+#     #+#    #+# #+#   #+#+# #+#    #+#
        ########   ########  ###    ####  ########  ###    ### ###     ###     ###      ########  ########## ###     ###     ###     ###########  ########  ###    ####  ########  ###
        \u{001B}[0m\n
    """
    )
}
