package test

import "github.com/rudolph9/chess"
import "github.com/ipcf/t"

test: t.Test & {
  subject: chess
  describe: "The board": {
    describe: "Row and column of of a Piece": {
      describe: "Bounds": {
        subject: chess.Piece.position
        it: "0": assert: valid: value: { column: 0, row: 0} 
        it: "1": assert: valid: value: { column: 3, row: 5} 
        it: "2": assert: valid: value: { column: 7, row: 7}
        it: "3": assert: valid: value: { column: 0, row: 7}
        it: "4": assert: valid: value: { column: 7, row: 0}

        it: "5": assert: invalid: value: { column: -1, row: -1}
        it: "6": assert: invalid: value: { column: -5, row: 10}
        it: "7": assert: invalid: value: { column: 8, row: 8}
        it: "8": assert: invalid: value: { column: 7, row: -8}
      }
    }
  }
}
