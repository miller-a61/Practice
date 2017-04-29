Module Solution
' Auto-generated code below aims at helping you parse
' the standard input according to the problem statement.

    Sub Main ()
        
        Dim N as Integer
        N = Console.ReadLine()
        Dim fastest as Integer
        Dim ttime as Integer
        Dim output as string
        fastest = 86400
        
        For i as Integer = 0 To N-1
            Dim t as String
            t = Console.ReadLine()
            'Console.WriteLine(t.length)
            ttime = Integer.Parse(t.substring(0, 2)) * 3600 + Integer.Parse(t.substring(3,2)) * 60 + Integer.Parse(t.substring(6,2))
            if ttime < fastest
                fastest = ttime
                output = t
            end if
            
        Next


        Console.WriteLine(output)
    End Sub
End Module


