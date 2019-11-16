package chess

import "strconv"

Piece:: {
  color: "black" | "white"
  position: {
    displayColumn: "C:" + strconv.FormatUint(column, 10)
    displayRow: "R:" + strconv.FormatUint(row, 10)
    column: >= 0 & <= 7
    row: >= 0 & <= 7
  }
}

Pawn: Piece & {
  
}
