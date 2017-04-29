Module Solution
    Sub Main ()
        Dim N as Integer
        N = Console.ReadLine()
        If (N > 1) Then 
            N = 6*N*(N-2)+8
        End If
        Console.WriteLine(N)
    End Sub
End Module