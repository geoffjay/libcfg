/**
 * Sample program to illustrate loading XML content as a configuration.
 */
class Cfg.XmlExample : Cfg.Example {

    public override string xml {
        get { return _xml; }
        set { _xml = value; }
    }

    construct {
        xml = """
          <cfg xmlns:cfg="urn:libcfg">
            <!-- nothing yet -->
          </cfg>
        """;
    }

    public XmlExample () {
        base ();
    }

    public override void run () {
        base.run ();
    }
}

int main (string[] args) {

    var ex = new Cfg.XmlExample ();
    ex.run ();

    return (0);
}
