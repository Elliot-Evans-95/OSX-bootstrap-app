//
// Created by Elliot Evans on 16/12/2020.
//

import Foundation

func shell(_ command: String) -> String {
    let task = Process()
    let pipe = Pipe()

    task.standardOutput = pipe
    task.arguments = ["-c", command]
//    task.launchPath = "/bin/zsh"
    task.launchPath = "/bin/bash"
    task.launch()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!

    return output
}