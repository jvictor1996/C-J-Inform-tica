<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '{#3w{+Fz%~ir=l{:%J[b8K(g}u.= l/@ny<PQc=Iog5>ZR(*@|fv{LJot{QmmUOM');
define('SECURE_AUTH_KEY',  '8]sK;Y7-{+i%%{/Z7QX!7iJi&9Y0+|_/b@T97T!B_v7b4tH[,P>G9#Km8}hK%<pp');
define('LOGGED_IN_KEY',    '@METGQMx}w]a|a8vK&jsw)>*_R5{1CpN>l<tDcCljaT}uV[diKzQT9h|=KazEAN<');
define('NONCE_KEY',        '=K^S~e<Q/_(n;{hkKn)W 1m@%0xrIqD{i)H-vzk>MhA[Qx1S&Y?7+d!{~@./+AUu');
define('AUTH_SALT',        'Q@.IaGEu3,|/Kx.XJ@6b/i3][R9Qx) r%nR7]e}9 eJI~Er@;joIW&ta[Tktj4mP');
define('SECURE_AUTH_SALT', '}:eN})-F9QEfS Z=duv!#my(@fqTh)E$Ev#cF78v5EgYJBs4fYT,;r9( TkP%=-+');
define('LOGGED_IN_SALT',   'Z}sr<XY*:L6;[}!Ei  :xP/odc9YdacR9$jN32ym9*6hDz`sW1bMj)$v2_HGWNSJ');
define('NONCE_SALT',       ')`fT,T,4pr N_y)(Snm2KZki`5U!GgQkkgwME?6F%()9<_)Gugju(IL`aM^=x+8%');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
