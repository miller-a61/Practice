Module Player
    Sub Main ()
        
        Dim inputs as String()
        Dim lightX as Integer ' the X position of the light of power
        Dim lightY as Integer ' the Y position of the light of power
        Dim initialTX as Integer ' Thor's starting X position
        Dim initialTY as Integer ' Thor's starting Y position
        inputs = Console.ReadLine().Split(" ")
        lightX = inputs(0)
        lightY = inputs(1)
        initialTX = inputs(2)
        initialTY = inputs(3)
        Dim ns as String
        Dim ew as String
        ' game loop
        While True
            Dim remainingTurns as Integer
            remainingTurns = Console.ReadLine() ' The remaining amount of turns Thor can move. Do not remove this line.
            if (initialTX < lightX) then
                ew = "E"
                initialTX = initialTX + 1
            else if (initialTX > lightX) then
                ew = "W"
                initialTX = initialTX - 1
            else
                ew = ""
            end if

            if (initialTY < lightY) then
                ns = "S"
                initialTY = initialTY + 1
            else if (initialTY > lightY) then
                ns = "N"
                initialTY = initialTY - 1
            else
                ns = ""
            end if
            
            Console.WriteLine(ns + ew)
        End While
    End Sub
End Module