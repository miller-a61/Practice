Module Solution

    Sub Main ()
        
        Dim N as Integer
        N = Console.ReadLine()
        Dim spaces as String
        Dim stars as String
        Dim i as Integer
        Dim spaces2 as String
        
        For i = 0 to N - 1

            spaces = StrDup(2 * n - i - 1, " ")
            
            stars = StrDup(2*i + 1, "*")

            If (i = 0) Then
                spaces = "." + StrDup(2 * n - i - 2, " ")
            End If       
        
            Console.WriteLine(spaces + stars)

        Next

        For i = 0 to N - 1

            spaces = StrDup(n - i - 1, " ")
            
            stars = StrDup(2*i + 1, "*")

            spaces2 = StrDup((2 * n) - (2 * i) - 1, " ")
        
            Console.WriteLine(spaces + stars + spaces2 + stars)

        Next
        
    End Sub
End Module
