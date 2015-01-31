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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with libcfg. If not, see <http://www.gnu.org/licenses/>.
 *
 * Author:
 *  Geoff Johnson <geoff.jay@gmail.com>
 */

/**
 * A common interface inherited by any object that functions as a
 * configuration node.
 */
[GenericAccessors]
public interface Cfg.Node : GLib.Object {

    public abstract void add_child (Cfg.Node node) throws Cfg.Error;

    public abstract uchar[] serialize () throws Cfg.Error;
}
