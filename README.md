# LeetCode Solutions

My LeetCode solutions in Swift, tracking the [LeetCode 75 study plan](https://leetcode.com/studyplan/leetcode-75/). One folder per problem, testable in Xcode via Swift Package Manager.

## Structure

```
Package.swift
Sources/LeetCode/1768-merge-strings-alternately/Solution1768.swift
Sources/LeetCode/1768-merge-strings-alternately/README.md
Tests/LeetCodeTests/1768-merge-strings-alternately/Solution1768Tests.swift
```

Each problem lives in a folder named `NNNN-problem-slug` (zero-padded LeetCode problem number + kebab-case title), mirrored between `Sources/LeetCode/` and `Tests/LeetCodeTests/`:
- `Sources/LeetCode/NNNN-slug/SolutionNNNN.swift` — the solution, in a uniquely-named `SolutionNNNN` struct/file (both must be unique across the module — all 75 solutions compile into one target, unlike LeetCode's own judge where every submission is isolated)
- `Sources/LeetCode/NNNN-slug/README.md` — problem link, topic tags, status, approach notes, and complexity
- `Tests/LeetCodeTests/NNNN-slug/SolutionNNNNTests.swift` — XCTest cases, taken from the problem's published examples

## Working in Xcode

Open the repo folder in Xcode (or double-click `Package.swift`) — it resolves as a Swift package automatically. Run all tests with **Product > Test**, or click the diamond next to an individual `XCTestCase` to run just that problem. From the command line: `swift build` and `swift test`.

## Adding a new solution

1. Copy `TEMPLATE/SolutionNNNN.swift` to `Sources/LeetCode/NNNN-slug/SolutionNNNN.swift`, `TEMPLATE/SolutionNNNNTests.swift` to `Tests/LeetCodeTests/NNNN-slug/SolutionNNNNTests.swift`, and `TEMPLATE/README.md` to `Sources/LeetCode/NNNN-slug/README.md`
2. Replace `NNNN` throughout with the zero-padded problem number
3. Fill in the solution, tests, and README
4. Check the box in the index below

## Index — LeetCode 75

| # | Title | Difficulty | Tags | Done |
|---|-------|------------|------|------|
| 1768 | [Merge Strings Alternately](Sources/LeetCode/1768-merge-strings-alternately) | Easy | Array, String | [x] |
| 1071 | [Greatest Common Divisor of Strings](Sources/LeetCode/1071-greatest-common-divisor-of-strings) | Easy | Array, String | [x] |
| 1431 | [Kids With the Greatest Number of Candies](Sources/LeetCode/1431-kids-with-the-greatest-number-of-candies) | Easy | Array, String | [x] |
| 0605 | [Can Place Flowers](Sources/LeetCode/0605-can-place-flowers) | Easy | Array, String | [x] |
| 0345 | [Reverse Vowels of a String](Sources/LeetCode/0345-reverse-vowels-of-a-string) | Easy | Array, String | [x] |
| 0151 | [Reverse Words in a String](Sources/LeetCode/0151-reverse-words-in-a-string) | Medium | Array, String | [x] |
| 0238 | [Product of Array Except Self](Sources/LeetCode/0238-product-of-array-except-self) | Medium | Array, String | [x] |
| 0334 | [Increasing Triplet Subsequence](Sources/LeetCode/0334-increasing-triplet-subsequence) | Medium | Array, String | [x] |
| 0443 | [String Compression](Sources/LeetCode/0443-string-compression) | Medium | Array, String | [x] |
| 0283 | [Move Zeroes](Sources/LeetCode/0283-move-zeroes) | Easy | Two Pointers, Array | [x] |
| 0392 | [Is Subsequence](Sources/LeetCode/0392-is-subsequence) | Easy | Two Pointers, Array | [x] |
| 0011 | [Container With Most Water](Sources/LeetCode/0011-container-with-most-water) | Medium | Two Pointers, Array | [ ] |
| 1679 | [Max Number of K-Sum Pairs](Sources/LeetCode/1679-max-number-of-k-sum-pairs) | Medium | Two Pointers, Array | [ ] |
| 0643 | [Maximum Average Subarray I](Sources/LeetCode/0643-maximum-average-subarray-i) | Easy | Sliding Window, Array | [x] |
| 1456 | [Maximum Number of Vowels in a Substring of Given Length](Sources/LeetCode/1456-maximum-number-of-vowels-in-a-substring-of-given-length) | Medium | Sliding Window, Array | [ ] |
| 1004 | [Max Consecutive Ones III](Sources/LeetCode/1004-max-consecutive-ones-iii) | Medium | Sliding Window, Array | [ ] |
| 1493 | [Longest Subarray of 1's After Deleting One Element](Sources/LeetCode/1493-longest-subarray-of-1s-after-deleting-one-element) | Medium | Sliding Window, Array | [ ] |
| 1732 | [Find the Highest Altitude](Sources/LeetCode/1732-find-the-highest-altitude) | Easy | Prefix Sum, Array | [ ] |
| 0724 | [Find Pivot Index](Sources/LeetCode/0724-find-pivot-index) | Easy | Prefix Sum, Array | [ ] |
| 2215 | [Find the Difference of Two Arrays](Sources/LeetCode/2215-find-the-difference-of-two-arrays) | Easy | Hash Table | [ ] |
| 1207 | [Unique Number of Occurrences](Sources/LeetCode/1207-unique-number-of-occurrences) | Easy | Hash Table | [ ] |
| 1657 | [Determine if Two Strings Are Close](Sources/LeetCode/1657-determine-if-two-strings-are-close) | Medium | Hash Table | [ ] |
| 2352 | [Equal Row and Column Pairs](Sources/LeetCode/2352-equal-row-and-column-pairs) | Medium | Hash Table | [ ] |
| 2390 | [Removing Stars From a String](Sources/LeetCode/2390-removing-stars-from-a-string) | Medium | Stack | [ ] |
| 0735 | [Asteroid Collision](Sources/LeetCode/0735-asteroid-collision) | Medium | Stack | [ ] |
| 0394 | [Decode String](Sources/LeetCode/0394-decode-string) | Medium | Stack | [ ] |
| 0933 | [Number of Recent Calls](Sources/LeetCode/0933-number-of-recent-calls) | Easy | Queue | [ ] |
| 0649 | [Dota2 Senate](Sources/LeetCode/0649-dota2-senate) | Medium | Queue | [ ] |
| 2095 | [Delete the Middle Node of a Linked List](Sources/LeetCode/2095-delete-the-middle-node-of-a-linked-list) | Medium | Linked List | [ ] |
| 0328 | [Odd Even Linked List](Sources/LeetCode/0328-odd-even-linked-list) | Medium | Linked List | [ ] |
| 0206 | [Reverse Linked List](Sources/LeetCode/0206-reverse-linked-list) | Easy | Linked List | [ ] |
| 2130 | [Maximum Twin Sum of a Linked List](Sources/LeetCode/2130-maximum-twin-sum-of-a-linked-list) | Medium | Linked List | [ ] |
| 0104 | [Maximum Depth of Binary Tree](Sources/LeetCode/0104-maximum-depth-of-binary-tree) | Easy | Tree, Binary Tree, DFS, Recursion | [ ] |
| 0872 | [Leaf-Similar Trees](Sources/LeetCode/0872-leaf-similar-trees) | Easy | Tree, Binary Tree, DFS, Recursion | [ ] |
| 1448 | [Count Good Nodes in Binary Tree](Sources/LeetCode/1448-count-good-nodes-in-binary-tree) | Medium | Tree, Binary Tree, DFS, Recursion | [ ] |
| 0437 | [Path Sum III](Sources/LeetCode/0437-path-sum-iii) | Medium | Tree, Binary Tree, DFS, Recursion | [ ] |
| 1372 | [Longest ZigZag Path in a Binary Tree](Sources/LeetCode/1372-longest-zigzag-path-in-a-binary-tree) | Medium | Tree, Binary Tree, DFS, Recursion | [ ] |
| 0236 | [Lowest Common Ancestor of a Binary Tree](Sources/LeetCode/0236-lowest-common-ancestor-of-a-binary-tree) | Medium | Tree, Binary Tree, DFS, Recursion | [ ] |
| 0199 | [Binary Tree Right Side View](Sources/LeetCode/0199-binary-tree-right-side-view) | Medium | Tree, Binary Tree, BFS | [ ] |
| 1161 | [Maximum Level Sum of a Binary Tree](Sources/LeetCode/1161-maximum-level-sum-of-a-binary-tree) | Medium | Tree, Binary Tree, BFS | [ ] |
| 0700 | [Search in a Binary Search Tree](Sources/LeetCode/0700-search-in-a-binary-search-tree) | Easy | Tree, Binary Search Tree | [ ] |
| 0450 | [Delete Node in a BST](Sources/LeetCode/0450-delete-node-in-a-bst) | Medium | Tree, Binary Search Tree | [ ] |
| 0841 | [Keys and Rooms](Sources/LeetCode/0841-keys-and-rooms) | Medium | Graph, DFS | [ ] |
| 0547 | [Number of Provinces](Sources/LeetCode/0547-number-of-provinces) | Medium | Graph, DFS | [ ] |
| 1466 | [Reorder Routes to Make All Paths Lead to the City Zero](Sources/LeetCode/1466-reorder-routes-to-make-all-paths-lead-to-the-city-zero) | Medium | Graph, DFS | [ ] |
| 0399 | [Evaluate Division](Sources/LeetCode/0399-evaluate-division) | Medium | Graph, DFS | [ ] |
| 1926 | [Nearest Exit from Entrance in Maze](Sources/LeetCode/1926-nearest-exit-from-entrance-in-maze) | Medium | Graph, BFS | [ ] |
| 0994 | [Rotting Oranges](Sources/LeetCode/0994-rotting-oranges) | Medium | Graph, BFS | [ ] |
| 0215 | [Kth Largest Element in an Array](Sources/LeetCode/0215-kth-largest-element-in-an-array) | Medium | Heap (Priority Queue) | [ ] |
| 2336 | [Smallest Number in Infinite Set](Sources/LeetCode/2336-smallest-number-in-infinite-set) | Medium | Heap (Priority Queue) | [ ] |
| 2542 | [Maximum Subsequence Score](Sources/LeetCode/2542-maximum-subsequence-score) | Medium | Heap (Priority Queue) | [ ] |
| 2462 | [Total Cost to Hire K Workers](Sources/LeetCode/2462-total-cost-to-hire-k-workers) | Medium | Heap (Priority Queue) | [ ] |
| 0374 | [Guess Number Higher or Lower](Sources/LeetCode/0374-guess-number-higher-or-lower) | Easy | Binary Search | [ ] |
| 2300 | [Successful Pairs of Spells and Potions](Sources/LeetCode/2300-successful-pairs-of-spells-and-potions) | Medium | Binary Search | [ ] |
| 0162 | [Find Peak Element](Sources/LeetCode/0162-find-peak-element) | Medium | Binary Search | [ ] |
| 0875 | [Koko Eating Bananas](Sources/LeetCode/0875-koko-eating-bananas) | Medium | Binary Search | [ ] |
| 0017 | [Letter Combinations of a Phone Number](Sources/LeetCode/0017-letter-combinations-of-a-phone-number) | Medium | Backtracking | [ ] |
| 0216 | [Combination Sum III](Sources/LeetCode/0216-combination-sum-iii) | Medium | Backtracking | [ ] |
| 1137 | [N-th Tribonacci Number](Sources/LeetCode/1137-n-th-tribonacci-number) | Easy | Dynamic Programming | [ ] |
| 0746 | [Min Cost Climbing Stairs](Sources/LeetCode/0746-min-cost-climbing-stairs) | Easy | Dynamic Programming | [ ] |
| 0198 | [House Robber](Sources/LeetCode/0198-house-robber) | Medium | Dynamic Programming | [ ] |
| 0790 | [Domino and Tromino Tiling](Sources/LeetCode/0790-domino-and-tromino-tiling) | Medium | Dynamic Programming | [ ] |
| 0062 | [Unique Paths](Sources/LeetCode/0062-unique-paths) | Medium | Dynamic Programming | [ ] |
| 1143 | [Longest Common Subsequence](Sources/LeetCode/1143-longest-common-subsequence) | Medium | Dynamic Programming | [ ] |
| 0714 | [Best Time to Buy and Sell Stock with Transaction Fee](Sources/LeetCode/0714-best-time-to-buy-and-sell-stock-with-transaction-fee) | Medium | Dynamic Programming | [ ] |
| 0072 | [Edit Distance](Sources/LeetCode/0072-edit-distance) | Medium | Dynamic Programming | [ ] |
| 0338 | [Counting Bits](Sources/LeetCode/0338-counting-bits) | Easy | Bit Manipulation | [ ] |
| 0136 | [Single Number](Sources/LeetCode/0136-single-number) | Easy | Bit Manipulation | [ ] |
| 1318 | [Minimum Flips to Make a OR b Equal to c](Sources/LeetCode/1318-minimum-flips-to-make-a-or-b-equal-to-c) | Medium | Bit Manipulation | [ ] |
| 0208 | [Implement Trie (Prefix Tree)](Sources/LeetCode/0208-implement-trie-prefix-tree) | Medium | Trie | [ ] |
| 1268 | [Search Suggestions System](Sources/LeetCode/1268-search-suggestions-system) | Medium | Trie | [ ] |
| 0435 | [Non-overlapping Intervals](Sources/LeetCode/0435-non-overlapping-intervals) | Medium | Array, Sorting | [ ] |
| 0452 | [Minimum Number of Arrows to Burst Balloons](Sources/LeetCode/0452-minimum-number-of-arrows-to-burst-balloons) | Medium | Array, Sorting | [ ] |
| 0739 | [Daily Temperatures](Sources/LeetCode/0739-daily-temperatures) | Medium | Stack, Monotonic Stack | [ ] |
| 0901 | [Online Stock Span](Sources/LeetCode/0901-online-stock-span) | Medium | Stack, Monotonic Stack | [ ] |
