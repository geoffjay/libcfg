[CCode (prefix = "BuildConfig", lower_case_cprefix = "bcfg_", cheader_filename = "config.h")]
namespace BuildConfig {
    /* Package information */
    public const string PACKAGE_NAME;
    public const string PACKAGE_STRING;
    public const string PACKAGE_VERSION;

    /* Configured paths - these variables are not present in config.h, they are
     * passed to underlying C code as cmd line macros. */
    public const string PKGDATADIR; /* /usr/local/share/cfg */
    public const string PKGLIBDIR;  /* /usr/local/lib/cfg   */
}
