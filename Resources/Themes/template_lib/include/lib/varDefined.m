With[{
  tempArgs=
    $$templateLib["getTemplateArguments"][#]
  },
  MatchQ[
    $$templateLib["templateArgumentLookup"][tempArgs,"var"],
    Except[
      _Missing|False|None|_String?(StringMatchQ[Whitespace])|""
      ]
    ]
  ]&
