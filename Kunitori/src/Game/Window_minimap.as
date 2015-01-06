package Game 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import Game.Window;

	import World.World;

	/**
	 * @author yuki
	 * world の minimap. window_map が現在どの範囲を表示しているかを示す.
	 */
	public class Window_minimap extends Window 
	{
		const WINDOW_SIZE:int = 10;

		//コンストラクタ
		public function Window_minimap(world : World) 
		{
			var changescaleX:Number = WINDOW_SIZE / (world.returnWorldSize()*9);
			var changescaleY:Number = WINDOW_SIZE / (world.returnWorldSize()*9);
			var inbm:Bitmap = world.returnBM();

//			bmdata = new BitmapData(WINDOW_SIZE * 16, WINDOW_SIZE * 9);//,false,0xFF0000);
			
			this.bm = inbm;
			this.bm.scaleX = changescaleX;
			this.bm.scaleY = changescaleY;
			bm.y = 225;
		}
	}
}
