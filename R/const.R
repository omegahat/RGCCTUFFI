constParams =
  #
  # See tu.R
  # k = resolveType(r$constants,tu)
  # constParams(k)
  #
function(fun)
{
  sapply(fun$parameters, function(x) isConst(x$type))
}

mutableParams =
  #
  # See tu.R
  # k = resolveType(r$constants,tu)
  # constParams(k)
  #
function(fun)
{
  sapply(fun$parameters, function(x) isMutable(x$type))
}




isConst =
  # Make this generic and add methods.
function(type)
{
   if(inherits(type, "ResolvedTypeReference"))
      type = resolveType(type)

   if(inherits(type, "PointerType"))
      return(isConst(type@type))
  
   "const" %in% type@qualifiers
}


isMutable =
  # Make this generic and add methods.
function(type)
{
   if(inherits(type, "ResolvedTypeReference"))
      type = resolveType(type)

   if(inherits(type, "PointerType"))
      return(!isConst(type@type))

   FALSE
}

