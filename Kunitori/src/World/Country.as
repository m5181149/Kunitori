package World 
{
	import flash.geom.Point;
	/**
	 * @author yuki
	 */
	public class Country 
	{
		//国の座標
		private var x:int;
		private var y:int;
		
		//コンストラクタ
		public function Country(in_x:int, in_y:int)
		{
			this.x = in_x;
			this.y = in_y;
		}
		
		
		//x座標の return
		public function returnX():int
		{
			return this.x;
		}
		//y座標の return
		public function returnY():int
		{
			return this.y;
		}
		
		//座標の return
		public function returnPos():Point
		{
			var pos:Point = new Point(this.x, this.y);
			return pos;
			
		}
		
	}
}
