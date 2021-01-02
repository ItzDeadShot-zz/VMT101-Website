/*
	Coding for preloader animation 
*/
import flash.events.Event;
import flash.events.TimerEvent;
stop();

addEventListener(Event.ENTER_FRAME, openLoader);

var toLoad:Number = 5000; // 5000 milisecond = 5 second
var loaded:Number = 0;
var timer:Timer = new Timer(100); // stop for 100 milisecond = 0.1 second
function openLoader(e:Event):void {

	var total:Number = loaded/toLoad;
	if(loaded == toLoad) {
		removeEventListener(Event.ENTER_FRAME, openLoader);
		gotoAndStop(2);
	} else {
		preloader.preloaderFill.scaleX = total;
		preloader.percent_loaded.text = Math.floor(total*100) + "%";
		timer.addEventListener(TimerEvent.TIMER, increaseTime);
		timer.start();
	}
}

function increaseTime(event:TimerEvent):void {
        timer.removeEventListener(TimerEvent.TIMER, increaseTime);
        loaded += 100;	// increase value of total time by 100 milisecond = 0.1 second
}