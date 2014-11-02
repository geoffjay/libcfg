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
 * Error domains for libcfg.
 */
namespace Cfg {
    /**
     * A general error domain.
     */
    public errordomain Error {
        NAMESPACE_NOT_FOUND,
        NODE_NOT_FOUND,
        KEY_EXISTS
    }

    /**
     * Error domain for file operations.
     */
    public errordomain FileError {
        ACCESS,
        FILE_NOT_FOUND
    }

    /**
     * Error types for XML configurations.
     */
    public errordomain XmlError {
        XML_DOCUMENT_EMPTY,
        INVALID_XPATH_EXPR
    }

    /**
     * Error types for JSON configurations.
     */
    public errordomain JsonError {
        JSON_DOCUMENT_EMPTY,
        INVALID_JSON_PATH_EXPR
    }
}
