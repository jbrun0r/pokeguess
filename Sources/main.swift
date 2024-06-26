// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser

struct Pokeguess: ParsableCommand {
    
    static let configuration = CommandConfiguration(
        abstract: "Pokémon Guesser",
        discussion: 
            """
            A guessing game of first-generation Pokémon. Enter the name of a Pokémon and
            receive a comparison of the key features between the entered Pokémon and the
            target Pokémon. Try to guess with the fewest number of attempts.
            """
        ,
        
        subcommands: [Guess.self, Hint.self, Info.self, List.self, History.self]
    )
    
    mutating func run() throws {
        print("""
            
            :::::::::   ::::::::  :::    ::: ::::::::::  ::::::::  :::    ::: ::::::::::  ::::::::   ::::::::
            :+:    :+: :+:    :+: :+:   :+:  :+:        :+:    :+: :+:    :+: :+:        :+:    :+: :+:    :+:
            +:+    +:+ +:+    +:+ +:+  +:+   +:+        +:+        +:+    +:+ +:+        +:+        +:+
            +#++:++#+  +#+    +:+ +#++:++    +#++:++#   :#:        +#+    +:+ +#++:++#   +#++:++#++ +#++:++#++
            +#+        +#+    +#+ +#+  +#+   +#+        +#+   +#+# +#+    +#+ +#+               +#+        +#+
            #+#        #+#    #+# #+#   #+#  #+#        #+#    #+# #+#    #+# #+#        #+#    #+# #+#    #+#
            ###         ########  ###    ### ##########  ########   ########  ##########  ########   ########
            
            """)
            
    }
}

extension Pokeguess {
    
    struct Guess: ParsableCommand {
        static var configuration = CommandConfiguration(
        abstract: "Try to guess the target Pokémon",
        discussion: 
            """
            Enter the name of a Pokémon and receive a comparison of the key features
            between the entered Pokémon and the target Pokémon.
            """
        )
        
        @Argument(help: "Pokémon name") var pokemon: String

        mutating func run() {
            guess(pokemon)
        }
    }
    
    struct Hint: ParsableCommand {
        static var configuration = CommandConfiguration(
        abstract: "Shows a hint about the target pokemon",
        discussion: 
            """
            This subcommand is used to display the description of the target Pokémon.
            """
        )

        mutating func run() {
            hint()
        }
    }
    
    struct Info: ParsableCommand {
        static var configuration = CommandConfiguration(
        abstract: "Shows information about available pokemon",
        discussion: 
            """
            This subcommand display the features of a specific Pokémon.
            """
        )
        
        @Argument(help: "Pokémon name") var pokemon: String

        mutating func run() {
            info(pokemon)
        }
    }
    
    struct List: ParsableCommand {
        static var configuration = CommandConfiguration(
        abstract: "List all available pokemon",
        discussion: 
            """
            This subcommand lists all available Pokémon.
            """
        )

        mutating func run() {
            list()
        }
    }
    
    struct History: ParsableCommand {
        static var configuration = CommandConfiguration(
        abstract: "Show the history of attempts",
        discussion:
            """
            This subcommand displays the history of attempts made to guess Pokémon.
            """
        )

        mutating func run() {
            hist()
        }
    }

}

Pokeguess.main()
