<?php

namespace App\Http\Controllers\Admin;

trait RrsourceDelete{
	public function delete(...$files)
	{
		foreach ($files as $file) {
			if (!empty($file) && file_exists('public/'.$file)) { 
	            unlink('public/'.$file);
	        }
		}
	}
}