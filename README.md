# Hangman

A game in which you need to guess the hidden word.

This is a Ruby application and requires the Ruby language and bundler to run.

The game was created on Ruby 3.1.2

Before starting the game, run:

```
$ bundle
```

Run:

```
$ bundle exec ruby main.rb
```

### Rules of the game

* It is necessary to guess the word by opening one letter each turn
* If the letter is not guessed, the error counter will increase by 1
* There are 7 mistakes in total

### Game interface

After launching, you will see the game screen:

```
Слово: __ __ __ __ __ __
            _______
            |/
            |
            |
            |
            |
            |
            |
            |
          __|________
          |         |

Ошибки (0):
У вас осталось ошибок: 7
Введите следующую букву:
```

The word that needs to be guessed. In this example, the word consists of 6 letters

```
Слово: __ __ __ __ __ __
```

Correctly guessed letters will be shown here

```
Слово: __ А __ А __ А
```

Incorrectly entered letters and the number of errors are shown here

```
Ошибки (2): О, К
```

How many attempts are shown here

```
У вас осталось ошибок: 5
```

### Add or change game words

To add or change game words, change the text file `data/words.txt`. The case of the words does not matter.
