/**
 * This file is part of libcfg.
 *
 * libcfg is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * libcfg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with libcfg.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Author:
 *  Geoff Johnson <geoff.jay@gmail.com>
 */

/**
 * A common interface inherited by any object that functions as a
 * configuration file.
 */
[GenericAccessors]
public interface Cfg.Configuration : GLib.Object {

    /**
     * The configuration file to use.
     */
    public abstract string filename { get; set; }

    public abstract string ns { get; set; }

    /**
     * Specifies whether the configuration file is open.
     */
    public abstract bool is_open { get; }

    /**
     * Emitted when any of known configuration settings have changed.
     */
    public signal void configuration_changed (string ns);

    /**
     * Emitted when any of the namespace settings have changed.
     */
    public signal void namespace_changed (string ns, string key);

    /**
     * Emitted when some setting has changed within a namespace.
     */
    public signal void setting_changed (string ns, string key);

    /**
     * Specifies whether this configuration can be edited - i.e. whether
     * {@link save}, {@link save_as}, etc. are legal operations.
     */
    public abstract bool read_only { get; }

    /**
     * FIXME: Needs documentation.
     */
    public abstract void open () throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract void close () throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract void save () throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract void save_as (string filename) throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract void register_ns (string prefix,
                                      string ns_uri)
                                      throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract uchar[] serialize () throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract int get_int (string ns,
                                 string key)
                                 throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract Gee.ArrayList<int> get_int_list (string ns,
                                                string key)
                                                throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract string get_string (string ns, string key) throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract Gee.ArrayList<string> get_string_list (string ns,
                                                           string key)
                                                           throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract int get_bool (string ns, string key) throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     * XXX: maybe pointless?
     */
    public abstract Gee.ArrayList<bool> get_bool_list (string ns,
                                                  string key)
                                                  throws GLib.Error;

    /**
     * FIXME: Needs documentation.
     */
    public abstract int get_double (string ns, string key) throws GLib.Error;

    /* FIXME: or don't, a list of doubles may be useless anyways */
    /*
     *public abstract Gee.ArrayList<double> get_double_list (string ns,
     *                                                  string key)
     *                                                  throws GLib.Error;
     */
}
