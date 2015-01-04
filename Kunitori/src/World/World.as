package World {
	import flash.display.BitmapData;
	/**
	 * @author yuki
	 */

	public class World {
		const WORLD_SIZE_MIN:int = 20;
		const WORLD_SIZE_SMALL:int = 100;
		const WORLD_SIZE_MEDIUM:int = 300;
		const WORLD_SIZE_LARGE:int = 500;
		
		//BitmapData  作成
		private var world_map : BitmapData;
		
		//コンストラクタ
		public function World()
		{
			trace('World');
			world_map = new BitmapData(WORLD_SIZE_MIN*16, WORLD_SIZE_MIN*9, false, 0x0000FF);
		}
		
		//BitmapData のreturn
		public function returnMap():BitmapData
		{
			return this.world_map;
		}
	}
}
