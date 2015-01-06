package World {
	import flash.display.BitmapData;
	
	/**
	 * @author yuki
	 * 世界のデータが格納されている
	 */

	public class World {
		//どの大きさのworld を生成するか
		const WORLD_FRAG_MIN:int = 0;
		const WORLD_FRAG_SMALL:int = 1;
		const WORLD_FRAG_MEDIUM:int = 2;
		const WORLD_FRAG_LARGE:int = 3;
		
		//world の大きさ (縦横比 は 9:16)
		const WORLD_SIZE_MIN:int = 1;
		const WORLD_SIZE_SMALL:int = 2;
		const WORLD_SIZE_MEDIUM:int = 3;
		const WORLD_SIZE_LARGE:int = 5;
		
		//world のサイズ, BitmapData, Array
		private var world_size_frag:int;
		private var world_size:int;
		private var world_map : BitmapData;
		private var world_data:Array;
		
		//コンストラクタ　
		/*
		public function World()
		{
			world_map = new BitmapData(WORLD_SIZE_MIN*16*5, WORLD_SIZE_MIN*9*5, false, 0x0040C0);
//			world_data = new Array(WORLD_SIZE_MIN*16 + WORLD_SIZE_MIN*9);
		}
		
		 */
		//コンストラクタ(world のサイズを指定可能)
		
		public function World(WORLD_SIZE:int)
		{
			trace('World');
			
			switch(WORLD_SIZE)
			{
				case WORLD_FRAG_MIN:
					world_size_frag = WORLD_FRAG_MIN;
					world_size = WORLD_SIZE_MIN;
//					world_map = new BitmapData(WORLD_SIZE_MIN*16*5, WORLD_SIZE_MIN*9*5, false, 0x0040C0);
					world_data = new Array(WORLD_SIZE_MIN*16 + WORLD_SIZE_MIN*9);
					break;
					
				case WORLD_FRAG_SMALL :
					world_size_frag = WORLD_FRAG_SMALL;
//					world_map = new BitmapData(WORLD_SIZE_SMALL*16*5, WORLD_SIZE_SMALL*9*5, false, 0x0040C0);
					world_data = new Array(WORLD_SIZE_SMALL*16 + WORLD_SIZE_SMALL*9);
					break;
					
				case WORLD_FRAG_MEDIUM :
					world_size_frag = WORLD_FRAG_MEDIUM;
//					world_map = new BitmapData(WORLD_SIZE_MEDIUM*16*5, WORLD_SIZE_MEDIUM*9*5, false, 0x0040C0);
					world_data = new Array(WORLD_SIZE_MEDIUM*16 + WORLD_SIZE_MEDIUM*9);
					break;
					
				case WORLD_FRAG_LARGE :
					world_size_frag = WORLD_FRAG_LARGE;
//					world_map = new BitmapData(WORLD_SIZE_LARGE*16*5, WORLD_SIZE_LARGE*9*5, false, 0x0040C0);
					world_data = new Array(WORLD_SIZE_LARGE*16 + WORLD_SIZE_LARGE*9);
					break;
				default:
					break;			
			}
			//world_map = new BitmapData(WORLD_SIZE_MIN*16, WORLD_SIZE_MIN*9, false, 0x0040C0);
		}
		
		//worldSizeFrag のreturn
		public function returnWorldSizeFrag():int
		{
			return this.world_size_frag;
		}
		
		//worldSize のreturn
		public function returnWorldSize():int
		{
			return this.world_size;
		}
		
		//BitmapData のreturn
		public function returnMap():BitmapData
		{
			return this.world_map;
		}
		
		//world_data のreturn
		
		public function returnData():Array
		{
			return this.world_data;
		}
		
	}
}
