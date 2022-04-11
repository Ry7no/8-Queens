//
//  main.swift
//  8Queens
//
//  Created by Br7 on 2022/4/11.
//

import Foundation

print("Please enter a number for N-queens puzzle (default number is 8)")

let userInput = readLine() ?? ""
let queenNum = Int(userInput) ?? 8

print("Here is the solution for \(queenNum)-queens puzzle \nOutput:")
print("1. Total \(solveNQueens(queenNum).count) solutions for \(queenNum)-queens puzzle")
print("2. \(solveNQueens(queenNum))")


