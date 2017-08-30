Scriptname HavokKiller extends ObjectReference  

Event OnLoad()
	SetMotionType(Motion_Keyframed, false)
	Self.MoveToMyEditorLocation()
EndEvent

Event OnCellAttach()
	Self.MoveToMyEditorLocation()
EndEvent

Event OnLoadGame()
	if (Self.Is3DLoaded())
		SetMotionType(Motion_Keyframed, false)
	endif
	Self.MoveToMyEditorLocation()
EndEvent