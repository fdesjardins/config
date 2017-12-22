P=(
  'Steve Jobs'
  'Robin Williams'
  'Noam Chomsky'
  'Steven Wright'
  'Bill Nye'
  'Elon Musk'
  'Stephen King'
  'Vladimir Putin'
  'Bill Gates'
  'Warren Buffet'
  'Nelson Mandela'
  'Bernie Sanders'
  'Richard Feynman'
  'Albert Einstein'
  'Donald Knuth'
  'Alan Turing'
  'Mary Lasker'
  'Jim Lovell'
  'Ben Bernanke'
  'Joe Biden'
  'Tom Hanks'
  'Elie Wiesel'
  'Neil Degrasse Tyson'
)

NAME="${P[$(( $RANDOM % ${#P[@]} + 1 ))]}"
QUOTE="$(wikiquote random $NAME)"
echo "$QUOTE\n\n-- $NAME" | cowsay

source "${HOME}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
