package Game 
{
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import Game.Window;

	/**
	 * @author yuki
	 * GUI(ボタン
	 */
	public class Window_GAMEGUI extends Window 
	{
		const WINDOW_SIZE:int = 10;
		
		//コンストラクタ
		public function Window_GAMEGUI() 
		{
			
			bmdata = new BitmapData(WINDOW_SIZE*24, WINDOW_SIZE*9,false,0x0000FF);
			bm = new Bitmap(this.bmdata);
			bm.x = 160;
			bm.y = 225;
		}
	}
}
