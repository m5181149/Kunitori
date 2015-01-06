package com.powerflasher.SampleApp {
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	import Game.Game;
	
	/**
	 * @author yuki
	 * ゲーム全体のクラス
	 */
	public class Kunitori extends Sprite {
		
		//ゲーム実行
		public function Kunitori()
		 {
			trace('Kunitori');
			//Game オブジェクト生成
			var game:Game = new Game();
			//window に表示
			//addChild(game.returnWindow_map().returnBM());			
			
			//stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
			
		}
		
		public function onMouseDown():void
		{
			trace('mousedown');

		
		}
		
	}
}
