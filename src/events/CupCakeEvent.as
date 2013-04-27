package events
{
	import flash.events.Event;
	
	public class CupCakeEvent extends Event
	{
		public static const LOADED:String = 'loaded';
		
		public var cupCakeArray:Array;
		
		public function CupCakeEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}