class Cfg.Example : GLib.Object {

    protected string _xml = """
        <cfg xmlns:cld="urn:libcfg">
            <cfg:objects>
                <!-- empty configuration template -->
            </cfg:objects>
        </cfg>
    """;

    public virtual string xml {
        get { return _xml; }
        set { _xml = value; }
    }

    //protected Cfg.Context context;

    public Example () { }

    public virtual void run () {
        Xml.Doc *doc = Xml.Parser.parse_memory (xml, xml.length);
        Xml.XPath.Context *ctx = new Xml.XPath.Context (doc);
        ctx->register_ns ("cfg", "urn:libcfg");
        Xml.XPath.Object *obj = ctx->eval_expression ("//cfg/cfg:objects");
        Xml.Node *node = obj->nodesetval->item (0);

        /*
         *var configuration = new Cfg.Configuration.from_node (node);
         *context = new Cfg.Context.from_config (configuration);
         */
    }
}
