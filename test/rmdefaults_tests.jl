using DFControl, Test

Client.rm_pseudoset!("test", server= "localhost")

@test_throws DFC.Client.HTTP.ExceptionRequest.StatusError Client.pseudos("localhost", "test", [:Ni])
