package World 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import World.Map;

	/**
	 * @author yuki
	 */
	public class Map_Sea extends Map 
	{
		public function Map_Sea() 
		{
			this.bmdata = new BitmapData(9, 9, false, 0x203080);
			this.bm = new Bitmap(this.bmdata);
		}
	}
}
