import kha.Scheduler;
import kha.Framebuffer;
import kha.System;
import kha.Window;

class Main {

    static var game:Game;

    static public function main() {
        System.start({ title: "KhaShmup", width: 640, height: 480 }, init);
    }

    private static function init(window:Window) {
        game = new Game();
        System.notifyOnFrames(
            function(fbs : Array<Framebuffer>) {
                game.render(fbs[0]);
            }
        );
        Scheduler.addTimeTask(game.update, 0, 1 / 60);
    }


}
