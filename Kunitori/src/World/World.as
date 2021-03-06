package World 
{
	import flash.display.Bitmap;
	import flash.geom.Rectangle;
	import flash.geom.Point;
	import flash.display.BitmapData;
	
	/**
	 * @author yuki
	 * 世界のデータが格納されている
	 */

	public class World 
	{
		//どの大きさのworld を生成するか を示すフラグ
		const WORLD_FRAG_MIN:int = 0;
		const WORLD_FRAG_SMALL:int = 1;
		const WORLD_FRAG_MEDIUM:int = 2;
		const WORLD_FRAG_LARGE:int = 3;
		
		//world の大きさ (縦横比 は 9:16)
		const WORLD_SIZE_MIN:int = 5;
		const WORLD_SIZE_SMALL:int = 10;
		const WORLD_SIZE_MEDIUM:int = 20;
		const WORLD_SIZE_LARGE:int = 30;
		
		//world 内の オブジェクトの識別子
		const WORLD_OBJ_SEA:int	= 0;		//海
		const WORLD_OBJ_LAND:int = 1; 		//陸地
		const WORLD_OBJ_FOREST:int = 2;		//森
		const WORLD_OBJ_MOUNTAIN:int = 3;	//山
		const WORLD_OBJ_RIVER:int = 4;		//川、湖
		const WORLD_OBJ_CASTLE:int = 5;		//城
		
		//world 内のオブジェクトの Map クラス
		const WORLD_MAP_SEA:Map_Sea = new Map_Sea();
		const WORLD_MAP_LAND:Map_Land = new Map_Land();
//		const WORLD_MAP_FOREST:Map_Forest = Map_Forest;
//		const WORLD_MAP_MOUNTAIN:Map_Mountain = Map_Mountain;
//		const WORLD_MAP_RIVER:Map_River = Map_River;
//		const WORLD_MAP_CASTLE:World.Map_Castle = Map_Castle;


		//world のサイズの判別フラグ, world のサイズ, world の内部データ, world のbitmapdata, world のbitmap
		private var world_size_frag:int;
		private var world_size:int;
		private var world_data:Array;
		private var world_bmdata:BitmapData;
		private var world_bm:Bitmap;
		private var land:Land;
		
		//コンストラクタ: WORLD_SIZE に応じた大きさの world を生成
		public function World(WORLD_SIZE:int)
		{
			var i:int, j:int;
			var pos:Point = new Point();
			var rect:Rectangle = new Rectangle(0,0,9,9);
			
			switch(WORLD_SIZE)
			{
				case WORLD_FRAG_MIN:
					this.world_size_frag = WORLD_FRAG_MIN;
					this.world_size = WORLD_SIZE_MIN;
					
					break;
					
				case WORLD_FRAG_SMALL :
					this.world_size_frag = WORLD_FRAG_SMALL;
					this.world_size = WORLD_SIZE_SMALL;

					break;
					
				case WORLD_FRAG_MEDIUM :
					this.world_size_frag = WORLD_FRAG_MEDIUM;
					this.world_size = WORLD_SIZE_MEDIUM;
					

					break;
					
				case WORLD_FRAG_LARGE :
					this.world_size_frag = WORLD_FRAG_LARGE;
					this.world_size = WORLD_SIZE_LARGE;
					

					break;
				default:
					break;			
			}
			
			this.world_data = new Array(this.world_size*9);
			for(i=0 ; i<this.world_size*9 ; i++)
			{
				this.world_data[i] = new Array(this.world_size*16);
			}
			world_bmdata = new BitmapData(WORLD_SIZE_MEDIUM*16*9, WORLD_SIZE_MEDIUM*9*9);
			
			fillbysea();
			makeLand(this.world_size_frag);
			
			for(i=0 ; i<this.world_size*9 ; i++)
			{
				for(j=0 ; j<this.world_size*16 ; j++)
				{
										
					pos.x = j * 9;
					pos.y = i * 9;
					
					switch(this.world_data[i][j])
					{
						case WORLD_OBJ_SEA:
							this.world_bmdata.copyPixels(WORLD_MAP_SEA.returnBMdata(), rect, pos);
							break;
						
						case WORLD_OBJ_LAND:
							this.world_bmdata.copyPixels(WORLD_MAP_LAND.returnBMdata(), rect, pos);
							break;
							
						/*まだ実装してないのでコメントアウト
						case WORLD_MAP_FOREST:
							this.world_bmdata.copyPixels(WORLD_MAP_FOREST.returnBMdata(), rect, pos);
							break;

 						case WORLD_MAP_MOUNTAIN:
							this.world_bmdata.copyPixels(WORLD_MAP_MOUNTAIN.returnBMdata(), rect, pos);
							break;
							 
							 
						case WORLD_MAP_RIVER:
							this.world_bmdata.copyPixels(WORLD_MAP_RIVER.returnBMdata(), rect, pos);
							break;		
										 
						case WORLD_MAP_CASTLE:
							this.world_bmdata.copyPixels(WORLD_MAP_CASTLE.returnBMdata(), rect, pos);
							break;
							  
						*/						
						 default:
							 break;
					}
					
				}
			}
			this.world_bm = new Bitmap(this.world_bmdata);
			
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
	
		//world_data のreturn
		public function returnData():Array
		{
			return this.world_data;
		}
		
		//Bitmapdata のreturn
		public function returnBMData():BitmapData
		{
			return this.world_bmdata;
		}
		
		//Bitmap の return
		public function returnBM():Bitmap
		{
			return this.world_bm;
		}
		
		//world を海で埋める
		public function fillbysea():void
		{
			// i: 縦, j: 横
			var i:int, j:int;
			
			for(i=0 ; i<this.world_size*9 ; i++)
			{
				for(j=0 ; j<this.world_size*16 ; j++)
				{
					this.world_data[i][j] = WORLD_OBJ_SEA;
				}
				
			}
			
			
		}
		
		//world に大陸を作る
		public function makeLand(size_frag:int):void
		{
			var i:int, j:int ;
			//大陸の個数
			var num_land:int ;
			//大陸を書き始める座標
			var begin_x:int, begin_y:int;
			
			//world のサイズに応じて 大陸の個数を指定
			switch(size_frag)
			{
				case WORLD_FRAG_MIN:
					num_land = 1;
					break;
				
				case WORLD_FRAG_SMALL:
					num_land = 2;
					break;
				
				case WORLD_FRAG_MEDIUM:
					num_land = 3;
					break;
				
				case WORLD_FRAG_LARGE:
					num_land = 5;
					break;
				
				default: 
					break;
					
			}
			
			//**test
			begin_x = 10;
			begin_y = 20;
			this.land = new Land(this.world_size_frag);
			for(i=0 ; i<this.land.returnArraysize() ; i++)
			{
				for(j=0 ; j<this.land.returnArraysize() ; j++)
				{
					this.world_data[begin_y+i][begin_x+j] = this.land.returnArrayXY(j, i);
				}
			}
			
			
		}
		
		//world に森, 山, 川, 湖を作る
		
		
		//world に国を作る

	}
}
