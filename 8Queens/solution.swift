//
//  solution.swift
//  8Queens
//
//  Created by Br7 on 2022/4/11.
//

import Foundation

func solveNQueens(_ n: Int) -> [[String]] {
    
    var row = [Character](repeating:".", count: n)
    var board = [[Character]](repeating: row, count: n)
    
    var col = Set<Int>()
    var posDiag = Set<Int>() // r + c
    var negDiag = Set<Int>() // r - c
    
    var res = [[String]]()
    
    func backtracking(_ row: Int) {
        if row == n {
            var strBoard: [String] = []
            for i in 0..<board.count {
                strBoard.append(String(board[i]))
            }
            res.append(strBoard)
            return
        }
        
        for c in 0..<n {
            let checkPosDiag = row+c
            let checkNegDiag = row-c
            if col.contains(c) || posDiag.contains(checkPosDiag) || negDiag.contains(checkNegDiag) {
                continue
            }
            
            col.insert(c)
            posDiag.insert(checkPosDiag)
            negDiag.insert(checkNegDiag)
            board[row][c] = "Q"
            
            backtracking(row+1)
            
            col.remove(c)
            posDiag.remove(checkPosDiag)
            negDiag.remove(checkNegDiag)
            board[row][c] = "."
        }
        
    }
    
    backtracking(0)
    return res
}



