import UIKit

/*
 You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane.

 Example 1:



 Input: coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
 Output: true
 
 Example 2:



 Input: coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
 Output: false
  

 Constraints:

 2 <= coordinates.length <= 1000
 coordinates[i].length == 2
 -10^4 <= coordinates[i][0], coordinates[i][1] <= 10^4
 coordinates contains no duplicate point.
 */

class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        let diff = abs(coordinates[0][1] - coordinates[0][0])
        for coordinate in coordinates {
            let x = coordinate[0]
            let y = coordinate[1]
            if abs(y - x) != diff {
                return false
            }
        }
        return true
    }
}

let sol = Solution()
sol.checkStraightLine([[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]])
sol.checkStraightLine([[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]])
sol.checkStraightLine([[-3,-2],[-1,-2],[2,-2],[-2,-2],[0,-2]])
