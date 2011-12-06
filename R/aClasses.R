setClass("CodeTOC", representation(methods = "character",
                                   classes = "character",
                                   generics = "character",
                                   functions = "character",
                                   vars = "character"))


codeTOC =
function(..., .obj = new("CodeTOC"))
{
    setSlots(list(...), .obj)
}

