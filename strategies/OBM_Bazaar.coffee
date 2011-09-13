# Optimized version of Big Money + Bazaar
{
  name: 'OBM Bazaar'
  author: 'WanderingWinder'
  gainPriority: (state) -> [
    "Province" if state.current.countInDeck("Gold") > 0
    "Duchy" if state.gainsToEndGame() <= 4
    "Estate" if state.gainsToEndGame() <= 2
    "Gold"
    "Duchy" if state.gainsToEndGame() <= 5
    "Bazaar"
    "Silver"
  ]
}

