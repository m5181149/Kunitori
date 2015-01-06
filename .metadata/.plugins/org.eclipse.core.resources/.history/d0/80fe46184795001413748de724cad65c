package Game {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import Game.Window;

	import World.World;

	/**
	 * @author yuki
	 * world の minimap. window_map が現在どの範囲を表示しているかを示す.
	 */
	public class Window_minimap extends Window {
		const WINDOW_SIZE:int = 10;

		public function Window_minimap(world : World) 
		{
			bmdata = new BitmapData(WINDOW_SIZE*16, WINDOW_SIZE*9,false,0x00FF00);
			bm = new Bitmap(this.bmdata);
		}
	}
}
