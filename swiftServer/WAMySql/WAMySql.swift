//
//  WAMySql.swift
//  swiftServer
//
//  Created by MacMini2 on 2017/12/28.
//

import Foundation
import PerfectMySQL

class Mysql
{
    init()
    {
        let mysql = MySQL()
        var result = mysql.connect()
    }
}
