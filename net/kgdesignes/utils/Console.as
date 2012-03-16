package net.kgdesignes.utils {
    import flash.external.ExternalInterface;

    public class Console {
        private static const LABEL:String = "[FLASH]";
        private static const FUNCTION_LOG:String = "console.log";
        private static const FUNCTION_INFO:String = "console.info";
        private static const FUNCTION_WARN:String = "console.warn";
        private static const FUNCTION_ERROR:String = "console.error";
        private static const FUNCTION_DEBUG:String = "console.debug";

        public static function log(... args):void {
            send(FUNCTION_LOG, args);
        }

        public static function info(... args):void {
            send(FUNCTION_INFO, args);
        }

        public static function warn(... args):void {
            send(FUNCTION_WARN, args);
        }

        public static function error(... args):void {
            send(FUNCTION_ERROR, args);
        }

        public static function debug(... args):void {
            send(FUNCTION_DEBUG, args);
        }

        private static function send(func:String, args:Array):void {
            trace(args);
            args.unshift(func, LABEL);
            ExternalInterface.call.apply(null, args);
        }
    }
}