/*
	Coding for generating a random number when a button is clicked
*/
import flash.events.MouseEvent;

stop();
RndBtn.addEventListener(MouseEvent.CLICK, generateRandom);

function generateRandom(event:MouseEvent):void {
	
	var num:Number = Math.floor((Math.random() * 9) + 1);
	rndText.text = String(num);
}

/* 
	Click to Go back to Scene 1
*/

back.addEventListener(MouseEvent.CLICK, fl_ClickToGoToScene_3);

function fl_ClickToGoToScene_3(event:MouseEvent):void
{
	MovieClip(this.root).gotoAndPlay(1, "Scene 1");
}
