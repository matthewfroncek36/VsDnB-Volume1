package modding;

import polymod.Polymod.PolymodErrorType;
import flixel.FlxG;
import polymod.Polymod.PolymodError;

class PolymodErrorHandler
{

public static function printError(error:PolymodError):Void
{
    trace('[POLYMOD] ' + error.message);

    try
    {
        showErrorAlert(error.message, 'Polymod');
    }
    catch (e:Dynamic)
    {
    }
}

    /**
     * Displays a window pop-up message to give an error message.
     * @param message The message to show.
     * @param title The title of the window.
     */
    public static function showErrorAlert(errorMessage:String, title:String)
    {
        FlxG.stage.application.window.alert(errorMessage, title);
    }

    /**
     * Logs a Polymod error into the console.
     * @param type The severity of the Polymod error.
     * @param message The message to display.
     */
public static function log(type:Dynamic, message:String):Void
{
	trace('[POLYMOD] ' + Std.string(type) + ': ' + message);
}

    public static function info(message:String):Void
    {
        trace(' POLYMOD: INFO '.bg_blue().bold() + ' ' + message);
    }
    
    public static function warning(message:String):Void
    {
        trace(' POLYMOD: WARNING '.bg_yellow().bold() + ' ' + message);
    }
    
    public static function debug(message:String):Void
    {
        trace(' POLYMOD: DEBUG '.bg_white().bold() + ' ' + message);
    }
    
    public static function error(message:String):Void
    {
        trace(' POLYMOD: ERROR '.bg_red().bold() + ' ' + message);
    }
}