package Game {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Stage;

	/**
	 * @author yuki
	 *	GUI などを作る予定
	 */
	public class Window{
		protected var bmdata:BitmapData;
		protected var bm:Bitmap;
		protected var stage:Stage;

		//Bitmap の return
		public function returnBM():Bitmap
		{
			return this.bm;
		}
		//Bitmapdata のreturn
		public function returnBMdata():BitmapData
		{
			return this.bmdata;
		}
		


		
	}
}
