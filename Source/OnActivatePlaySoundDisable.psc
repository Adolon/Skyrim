Scriptname OnActivatePlaySoundDisable extends ObjectReference  

ObjectReference Property SoundMarkerRef Auto
{The xmarker where the sound plays from.}
Sound Property SoundRef Auto
{The sound effect to play.}
ObjectReference Property DisableMarker Auto
{Enabled marker to disable.}
ObjectReference Property EnableMarker Auto
{Disabled marker to enable.}

Bool doOnce = False

Event OnActivate(ObjectReference ActivateRef)
	doOnce = True
	PlaySound()
EndEvent

Function PlaySound()
	if SoundRef.PlayAndWait(SoundMarkerRef)
    		Debug.Trace("Sound effect has finished playing!")
		DisableMarker.Disable()
		EnableMarker.Enable()
		gotoState("Done")
	else
    		Debug.Trace("Sound effect failed to play!")
	endif
EndFunction

State Done
EndState
