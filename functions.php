<?php

// Add favicon
function blog_favicon() {
	echo '<link rel="Shortcut Icon" type="image/x-icon" href="'.get_bloginfo('stylesheet_directory').'/core/images/favicon.ico" />';
}
add_action('wp_head', 'blog_favicon');

?>