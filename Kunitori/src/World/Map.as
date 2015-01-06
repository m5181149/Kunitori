package World {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**

	 * @author yuki
	 * bitmap に表示される, 1マス分のデータ
	 */
	public class Map 
	{
		protected var bmdata:BitmapData;
		protected var bm:Bitmap;
		
		
		//bitmapdata のreturn
		public function returnBMdata():BitmapData
		{
			return this.bmdata;
		}
		
		//bitmap の return
		public function returnBM():Bitmap
		{
			return this.bm;
		}
	}

}
