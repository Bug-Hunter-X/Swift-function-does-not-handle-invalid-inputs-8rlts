func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

//The bug is that the function does not handle invalid inputs such as negative width or height values.

func calculateArea(width: Double, height: Double) -> Double {
    guard width >= 0 && height >= 0 else{
        return 0 //Or throw an error
    }
    return width * height
}

let area1 = calculateArea(width: -10, height: 5) //Output 0
print(area1) 
let area2 = calculateArea(width: 10, height: 5)
print(area2)