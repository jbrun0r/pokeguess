# Pokeguess

**Pokeguess** is a command-line tool for playing a guessing game with first-generation Pokémon. Enter the name of a Pokémon and receive a comparison of its key features with a target Pokémon. Try to guess with the fewest number of attempts!

## Getting Started

To get started with Pokeguess, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/jbrun0r/pokeguess.git
   ```
1. Navigate to the project directory:

   ```bash
   cd pokeguess
   ```
1. Build the project:

   ```bash
   swift build
   ```

## Usage

Pokeguess provides several subcommands to interact with the game:

- **guess**: Try to guess the target Pokémon by entering its name.
- **hint**: Display a hint about the target Pokémon.
- **info**: View information about a specific Pokémon.
- **list**: List all available Pokémon.
- **history**: Show the history of attempts made to guess Pokémon.

## Example

```bash  
% swift run pokeguess -h
OVERVIEW: Pokémon Guesser

A guessing game of first-generation Pokémon. Enter the name of a Pokémon and
receive a comparison of the key features between the entered Pokémon and the
target Pokémon. Try to guess with the fewest number of attempts.

USAGE: pokeguess <subcommand>

OPTIONS:
  -h, --help              Show help information.

SUBCOMMANDS:
  guess                   Try to guess the target Pokémon
  hint                    Shows a hint about the target pokemon
  info                    Shows information about available pokemon
  list                    List all available pokemon
  history                 Show the history of attempts

  See 'pokeguess help <subcommand>' for detailed help.
```

```bash
% swift run pokeguess info Pikachu

═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
║ Name              ║ Type1             ║ Type2             ║ Ability1          ║ Ability2          ║ Primary Color     ║ Habitat           ║ Evolution Stage   ║ Height            ║ Weight            ║
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
║ Pikachu           ║ electric          ║ doesn t exist     ║ static            ║ lightning-rod     ║ yellow            ║ forest            ║ 1                 ║ 0.4m              ║ 6.0kg             ║
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════

                                                                                 
                 ░                                                               
               ░░░                                                               
              ░░░░░                                                              
             ░░░ ░░                                                              
             ░░░▒█▓                                                         ░    
            ░░▓███▒                                                       ▒██▒   
           ░▒█████▒                                 ░░░░░░░░░           ▓█████▒  
           ▒██████▒                         ▒▓▓███░░░░░░░░░░         ░▓███████▓  
           ▓██████░                    ░▓▓███████▒░░░░░░░░░        ▒▓██████████░ 
           ▓█████▓                 ░▒▓██████████▒░░░░░░░         ░▓████████████▒ 
          ░██████▓░▒▓▓▓▓▒▒▒░▒░  ░░▓████████████▓░░░░░          ░▓██████████████▓░
           ▓██████████████████████████████████▓░░            ░▓█████████████████▒
           ▒███████████▓▓▒▓████████████████▓▒▒              ▒███████████████████▒
         ▒████████████▒▓█░░▓████████▓▓▒▒▒░                ▒▓████████████████████▒
       ░▒▓▓███████████▒░░░▒██████████▓░                 ░▓██████████████████████▒
      ▒▓░░▒███▓█████████▓███▓▓▓▓██████▒               ░▒█████████████████████▓▒  
      ▓▓▒▒█████████▓▓██████▓▓▓▓▓▒██████▒             ░▓███████████████████▓░     
      ▒████▓▒▒▒▒▒▒▒▒▓█████▓▓▓▓▓▓▒▓█████▓            ▒██████████████████▓░        
      ▓▓▓█████▒▒▒▒▒▒▒█████▓▓▓▓▓▓▒███████▓░           ░██████████████▓▒░          
      ▒▓▒██████▒▒▒▒▒▒██████▒▓▓▓▓▓████████▓            ▒██████████▓▒░             
      ░▒▓▒██████▒▒▓▓▓█████████████████████▒            ▒▓▓▓▓█▓▓▒░                
        ░▒███████▓▓▒███████████████▓▓▓▓████▒            ▒▓▓▓▓░                   
          ▒▓████████████████████▓▒▓▓▓▓██████░            ▒▓▓▓▒                   
       ▒░▒▓██▓██████████████████▒█▓▓▓▓▓█████▒▒         ░▓▓▓▓▓▓░                  
 ░░░▓██████████████████████████▓▓▓▓▓▓▓▓██████▓░      ░▓▓▓▓▓▓▓▓░                  
▒▓█▓▓███████████████████████████▓██▓▓██████████▓░ ░▒▓▓▓▓▓▓▓▒░                    
▒▓▓▓█████████████████████████████▓██████████████▓░ ░▒▓▓▓▓░                       
░▓▓███████████████████████████████████████████████░  ░▒▓▓▓░                      
        ░░▒▒▓▓▓▓██████████████████████████████████▓░   ░▒▒▒▒░                    
                ▓███████████████████████████████████▒░░▒▒▒▒▒▒░                   
                ░███████████████████████████████████▓▒▒▒▒▒░░                     
                 ▓██████████████████████████████████▓▓▒░                         
                 ▓█████████████████████████████████▓▓▓▒▒▒░                       
                 ▓█████████████████████████████████▓▓▓▒░░                        
                 ▒███████████████████████████████▓▓▓▓▓▒                          
                  ▓███████████████████████████▓▓▓▓▓▓▓▓▒                          
                   ▓███████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░                          
                    ░▓▓▓▓▓▓▓▓▓▓▓░░░░▒▒░▒▓▓▓▓▓▓▓▓▓▓▓▓▒░                           
                      ░▒▒▓▓▒▒░░           ░▒▒▒▒▒▒▓▓▓▓                            
                         ░▓▓▓▒                  ▒▓▓▓▓░                           
                          ▒▓▓▒                   ▒▓█▓▒                           
                                                   ░▒                            
                                                                                 

About: When several of these POKéMON gather, their electricity could build and cause lightning storms.
```

```bash
% swift run pokeguess guess Pikachu

═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
║ Name              ║ Type1             ║ Type2             ║ Ability1          ║ Ability2          ║ Primary Color     ║ Habitat           ║ Evolution Stage   ║ Height            ║ Weight            ║
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
║ Pikachu           ║ electric          ║ doesn t exist     ║ static            ║ lightning-rod     ║ yellow            ║ forest            ║ 1 ⬆               ║ 0.4m ⬆            ║ 6.0kg ⬆           ║
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════

```


```bash
% swift run pokeguess

:::::::::   ::::::::  :::    ::: ::::::::::  ::::::::  :::    ::: ::::::::::  ::::::::   ::::::::
:+:    :+: :+:    :+: :+:   :+:  :+:        :+:    :+: :+:    :+: :+:        :+:    :+: :+:    :+:
+:+    +:+ +:+    +:+ +:+  +:+   +:+        +:+        +:+    +:+ +:+        +:+        +:+
+#++:++#+  +#+    +:+ +#++:++    +#++:++#   :#:        +#+    +:+ +#++:++#   +#++:++#++ +#++:++#++
+#+        +#+    +#+ +#+  +#+   +#+        +#+   +#+# +#+    +#+ +#+               +#+        +#+
#+#        #+#    #+# #+#   #+#  #+#        #+#    #+# #+#    #+# #+#        #+#    #+# #+#    #+#
###         ########  ###    ### ##########  ########   ########  ##########  ########   ########
```

## Dependencies

- [**Swift Argument Parser**](https://github.com/apple/swift-argument-parser): A powerful library for parsing command-line arguments in Swift.

## Contributing

Contributions to Pokeguess are welcome! Feel free to open issues or submit pull requests on GitHub.

Contributed by Victor Hugo (@VictorH1110).
