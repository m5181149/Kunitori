package World 
{
	import flash.display.BitmapData;
	import World.Map;

	/**
	 * @author yuki
	 */
	public class Map_Land extends Map 
	{
		public function Map_Land()
		{
			this.bmdata = new BitmapData(9, 9, false, 0x703010);
		}
	}
}
