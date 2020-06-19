# Four lambs 
```
                                         ,ooooooooooo,
                                       ,;OOOOOOOOOOOOOOo,
                                    ,ooOOOOOOOOOOOOOOOOOo;,,,,
                                ,ooooOOOOOOOOOOOOOOOOOOOOooo(@`,
                     _  __   __;oooooo OOOOOOOOOOO; ;@@@@@@@o;@@`,
            _______/@@@@@@@@@)ooOOOOOO) oOOOOOOOOOo; ;o@@@@@o;@@@:
           /######)@@@@@@@@@@( _______ ( oOOOOOOOOOOo o@@@@@@`@@@`;
          <######)@@@@@@@@@@@@(######/  `,;;;  oOOOOOo @@@@@@o,\@@;
               `\@@@@@@@@@@@@(######/ oO (@@@@\ oOOOOO;@@@@@@@, \@`,
                ))@@@@@@@@@@(       oOOOo@@@@@@: ;;oo,`o@@@@@;   (@)
                )  `@@@@@@@( (  ooOOOOOoo:@@@@@: ,' /###o@@@@;
                ( (0)     (0) ) ooooooo /@@@@@/,`  :####o@@@@;
                 )           ( `'`'`'`'/@@@@@/     /###/:@@@@;
                  `,       ,'     /###/@@@@@/     :###; :@@@@@;
                    \_`_'_/      /###/@@@@/       :###; :@@@@@;
                     ~~~~~      ;###;@@@@/        :##;  `:@@@@;
                                ;###;@@@@;       /  /    :@@@;
                               /~~~~;@@@@;      `-^-'    /   \
                               `-^--;@@@@/               `-^--'
                                    :~~~~:
                                    \/\_/
```

## Haskell resources
 - [Learn you a Haskell](http://learnyouahaskell.com)
 - [Real World Haskell](http://book.realworldhaskell.org/read/)
 - [Learn X in Y minutes](https://learnxinyminutes.com/docs/haskell/)
 - [Haskell prelude](https://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html)
 - [Slides](https://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html)

## Before you start
 - At least [install](https://docs.haskellstack.org/en/stable/README/#how-to-install) 
 `stack` (the all purpose Haskell tool)
 - You may want to [install](https://www.haskell.org/platform/) 
 the Haskell platform i.e. `ghc`, `ghci`, `cabal`, and `stack`

## Build and run
You can build this project by running first `$ stack setup` in the main directory.
This will download ghc and all other required libraries. This may take a while the first time you run it.

After downloading the required libraries you can build the project by running `$ stack build`, after
this you can either run the project by typing `$ stack exec four-lambs-exe`, or you can run
`$ stack install` which will copy the executable to `~/.local/bin/`. If this path is in your `$PATH` you can simply
run the `four-lambs-exe` binary directly from your terminal.



