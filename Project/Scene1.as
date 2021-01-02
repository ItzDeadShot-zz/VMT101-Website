/* 

	Click to Go to Scene 2

*/
stop();
RndNumSceneBtn.addEventListener(MouseEvent.CLICK, fl_ClickToGoToScene);

function fl_ClickToGoToScene(event:MouseEvent):void
{
	MovieClip(this.root).gotoAndPlay(1, "Scene 2");
}


/* 

	Click to Go to Scene 3

*/
PreLoadSceneBtn.addEventListener(MouseEvent.CLICK, fl_ClickToGoToScene_2);

function fl_ClickToGoToScene_2(event:MouseEvent):void
{
	MovieClip(this.root).gotoAndPlay(1, "Scene 3");
}
