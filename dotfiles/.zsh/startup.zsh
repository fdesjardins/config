P=(
  'Robin Williams'
  'Steven Wright'
  'George Carlin'
  'Mitch Hedberg'

  'Steve Jobs'
  'Bill Gates'
  'Elon Musk'
  'Warren Buffet'

  'Richard Feynman'
  'Albert Einstein'
  'Donald Knuth'
  'Alan Turing'

  'Noam Chomsky'
  'Bill Nye'
  'Neil Degrasse Tyson'
  'Lawrence Krauss'

  'Nelson Mandela'
  'Mary Lasker'
  'Jim Lovell'
  'Elie Wiesel'

  'Barack Obama'
  'Joe Biden'
  'Vladimir Putin'
  'Abraham Lincoln'

  'John Lennon'
  'Stephen King'
  'Christopher Hitchens'
  'Hunter S Thompson'
)

wikiquote random ${P[$(( $RANDOM % ${#P[@]} + 1 ))]} | cowsay

source "${HOME}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
