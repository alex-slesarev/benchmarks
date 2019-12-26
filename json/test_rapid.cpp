#include "rapidjson/document.h"
#include "rapidjson/filereadstream.h"
#include <cstdio>
#include <iostream>
#include <libsocket/inetclientstream.hpp>
#include <sstream>
#include <unistd.h>

using namespace std;
using namespace rapidjson;

void notify(const string& msg) {
  try {
    libsocket::inet_stream sock("localhost", "9001", LIBSOCKET_IPv4);
    sock << msg;
  } catch (...) {
    // standalone usage
  }
}

int main() {
    stringstream ostr;
    ostr << "C++ RapidJSON\t" << getpid();
    notify(ostr.str());

    FILE* fp = std::fopen("./1.json", "r");
    char buffer[65536];
    FileReadStream frs(fp, buffer, sizeof(buffer));
    Document jobj; 
    jobj.ParseStream(frs);

    const Value &coordinates = jobj["coordinates"];
    SizeType len = coordinates.Size();
    double x = 0, y = 0, z = 0;

    for (SizeType i = 0; i < len; i++) {
      const Value &coord = coordinates[i];
      x += coord["x"].GetDouble();
      y += coord["y"].GetDouble();
      z += coord["z"].GetDouble();
    }

    std::cout << x / len << std::endl;
    std::cout << y / len << std::endl;
    std::cout << z / len << std::endl;

    fclose(fp);

    notify("stop");
    return 0;
}
