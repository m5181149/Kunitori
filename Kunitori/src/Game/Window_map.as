package Game {
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import Game.Window;

	import World.World;

	/**
	 * @author yuki
	 * world の map 拡大, 縮小機能付き
	 */
	public class Window_map extends Window {
		const WINDOW_SIZE:int = 25;
		
		//コンストラクタ
		public function Window_map(world : World) 
		{
			bmdata = new BitmapData(WINDOW_SIZE*16, WINDOW_SIZE*9,false,0xFF0000);
			bm = new Bitmap(this.bmdata);
		}
		
		
	}
}
