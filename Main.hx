package;

import ecx.Engine;
import ecx.Service;
import ecx.System;
import ecx.Wire;
import ecx.World;
import ecx.WorldConfig;

class Main
{
    public static function main()
    {
        var config = new WorldConfig();

        config.add(new Foobar());

        var world = Engine.createWorld(config);
    }
}

class Foo extends Service
{
    public function new() {}
}

class Foobar extends System
{
    var _foo:Wire<Foo>;

    public function new() {}
}