// By default fast.json validates only portions of JSON that
// are read out as a compromise between speed and correctness.
// That includes UTF-8 validation for file based JSON.

import core.stdc.stdio;
import fast.json;
import std.socket;
import std.compiler;

struct Coord { double x, y, z; }

void main()
{
    try {
        auto socket = new TcpSocket(new InternetAddress("localhost", 9001));
        scope(exit) socket.close();
        socket.send("GDC fast");
    } catch (SocketOSException) {
        // standalone usage
    }

    double x = 0, y = 0, z = 0;

    auto json = parseJSONFile("./1.json");
    auto coords = json.coordinates.read!(Coord[]);

    foreach (ref coord; coords)
    {
        x += coord.x;
        y += coord.y;
        z += coord.z;
    }

    auto len = coords.length;
    printf("%.8f\n%.8f\n%.8f\n", x / len, y / len, z / len);
}
