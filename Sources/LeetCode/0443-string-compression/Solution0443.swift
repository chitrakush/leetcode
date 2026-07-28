struct Solution0443 {
    func compress(_ chars: inout [Character]) -> Int {
        var write = 0
        var read = 0
        while read < chars.count {
            let currentChar = chars[read]
            var count = 0
            while read < chars.count && chars[read] == currentChar {
                read += 1
                count += 1
            }
            chars[write] = currentChar
            write += 1
            if count > 1 {
                for digit in String(count) {
                    chars[write] = digit
                    write += 1
                }
            }
        }
        chars.removeSubrange(write...)
        return write
    }
}
