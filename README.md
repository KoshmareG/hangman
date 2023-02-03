# Hangman

A game in which you need to guess the hidden word.

This is a Ruby application and requires the Ruby language and bundler to run.

The game was created on Ruby 3.1.2

Running:

```
bundle
bundle exec ruby main.rb
```

### Rules of the game

* It is necessary to guess the word by opening one letter each turn
* If the letter is not guessed, the error counter will increase by 1
* There are 7 mistakes in total

### Add or change game words

To add or change game words, change the text file `words.txt`.

```
hangman/data/words.txt
```

The case of the words does not matter.
