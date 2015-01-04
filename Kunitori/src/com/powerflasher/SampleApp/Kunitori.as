package com.powerflasher.SampleApp {
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageDisplayState;
	import flash.events.MouseEvent;

	//import Game.Game;
	import World.World;
	import Game.Window;
	
	/**
	 * @author yuki
	 */
	public class Kunitori extends Sprite {
		
		//ゲーム実行
		public function Kunitori()
		 {
			trace('Kunitori');
			var world:World = new World();
			var window:Window = new Window(world);

			addChild(window.returnBM());
			
			stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
			
		}
		
		public function onMouseDown():void
		{
			trace('mousedown');

		
		}
		
	}
}
