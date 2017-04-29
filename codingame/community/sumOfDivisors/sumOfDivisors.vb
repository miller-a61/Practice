Module Solution
    Sub Main ()
        
        Dim x as Long
        x = Console.ReadLine()

        Dim y as long
        Dim sum as long
        y = x/2
        sum = y
        Dim w as long
        Dim v as long
        Dim i as long
        
        For i = 1 To y
            'Console.WriteLine(i)
            w = x\i
            v = y\i
            sum = sum + v * (1 + w)
            If (w mod 2 > 0 ) Then
                sum = sum + 1+ v
                End if
            'Console.WriteLine(v)
        Next

        Console.WriteLine(sum)
    End Sub
End Module