package services
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.NetConnection;
	import flash.net.Responder;
	
	public class CupCakeService extends EventDispatcher
	{
		private var _nc:NetConnection;
		
		public function CupCakeService(target:IEventDispatcher=null)
		{
			super(target);
			_nc = new NetConnection();
			_nc.connect("http://wddbs.com/~ahodgkiss/ffw/zend/library/gatewayCake.php");
		}
		public function getAllItems():void
		{
			var _res:Responder = new Responder(onItemsLoaded, onFail);
			_nc.call("CakeService.readCakes", _res);
		}
		
		private function onItemsLoaded():void
		{
			// TODO Auto Generated method stub
			
		}
		
		private function onFail():void
		{
			// TODO Auto Generated method stub
			
		}
	}
}