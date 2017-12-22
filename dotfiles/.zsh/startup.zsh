P=(
  'Robin Williams'
  'Steven Wright'
  'George Carlin'
  'Mitch Hedberg'

  'Steve Jobs'
  'Bill Gates'
  'Elon Musk'
  'Jed McCaleb'

  'Richard Feynman'
  'Albert Einstein'
  'Donald Knuth'
  'Alan Turing'

  'Noam Chomsky'
  'Bill Nye'
  'Neil deGrasse Tyson'
  'Adam Smith'

  'Nelson Mandela'
  'Mary Lasker'
  'Elie Wiesel'
  'Eleanor Roosevelt'

  'Barack Obama'
  'Joe Biden'
  'Vladimir Putin'
  'Abraham Lincoln'

  'John Lennon'
  'Stephen King'
  'Christopher Hitchens'
  'Hunter S. Thompson'
)

wikiquote random ${P[$(( $RANDOM % ${#P[@]} + 1 ))]} | cowsay -W 60

source "${HOME}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
