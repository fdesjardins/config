P=(
  'Steve Jobs'
  'Robin Williams'
  'Noam Chomsky'
  'Steven Wright'
  'Bill Nye'
  'Elon Musk'
)

wikiquote random ${P[$(( $RANDOM % ${#P[@]} + 1 ))]} | cowsay

source "${HOME}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
