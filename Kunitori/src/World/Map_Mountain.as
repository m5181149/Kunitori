package World {
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import World.Map;
	
	/**
	 * @author yuki
	 */
	public class Map_Mountain extends Map
	{
		
		public function Map_Mountain()
		{
			this.bmdata = new BitmapData(9,9,false,0x000000);
			this.bm = new Bitmap(bmdata);
		}
	}
}
