//: [Previous](@previous) / [Next](@next)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan](sloan.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

//create background orange colour
canvas.fillColor = Color(hue: 15, saturation: 99, brightness: 96, alpha: 100)

canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

//draw alternating rectangles
var yPosition = 0
var xPosition = 0
for rectangleColor in 1...20 {
    if rectangleColor % 2 == 1 {
        canvas.fillColor = Color.blue
        yPosition = 0
        
    } else{
            canvas.fillColor = Color.green
        yPosition = 50
        
    }
   
    canvas.drawRectangle(bottomLeftX: xPosition, bottomLeftY: yPosition, width: 50, height: 350)
    
    xPosition += 50
}



//drawing "sloan"
canvas.textColor = Color.white

canvas.drawText(message: "sloan", size: 95, x: 150, y: 400, kerning: 0)

//other text
canvas.drawText(message: """
saturday
december 19 1992
9pm
""", size: 10, x: 20, y: 540, kerning: -0.25)

canvas.drawText(message: """
with
thrush hermit
the quahogs
""", size: 10, x: 150, y: 540, kerning: -0.25)


canvas.drawText(message: """
camero's cafe
halifax
nova scotia
""", size: 10, x: 275, y: 540, kerning: -0.25)










// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

