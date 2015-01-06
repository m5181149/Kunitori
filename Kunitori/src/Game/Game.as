package Game 
{
	
	import flash.geom.Rectangle;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import World.World;
	import Game.Window;
	
	/**
	 * @author yuki
	 * ゲーム部分 world, map, minimap, GUI を持つ
	 */
	
	//Game オブジェクト
	public class Game extends Sprite
	{
		
		//
		private var window_map:Window_map ;
		private var window_minimap:Window_minimap;
		private var window_gui:Window_GAMEGUI;
		private var world:World;
		
		//コンストラクタ
		public function Game()
		{
			world = new World(0);
			window_map = new Window_map(world);
			window_minimap = new Window_minimap(world);
			window_gui = new Window_GAMEGUI();

			addChild(window_map.returnBM());
			addChild(window_minimap.returnBM());
			addChild(window_gui.returnBM());
			
//** test: bitmap の移動, 変形
			var dot:BitmapData = new BitmapData(9, 9, false, 0x000000);
			var rect:Rectangle = new Rectangle(0, 0, 3, 3);
			dot.fillRect(rect, 0xFF0000);
			rect = new Rectangle(6, 0, 3, 3);
			dot.fillRect(rect, 0xFF0000);
			var dot_bm:Bitmap = new Bitmap(dot);
			dot_bm.x = 10;
			dot_bm.y = 20;
			addChild(dot_bm);

		}
		
		public function returnWindow_map():Window
		{
			return this.window_map;
		}
		
		public function returnWindow_minimap():Window
		{
			return this.window_minimap;
		}

	}
}
