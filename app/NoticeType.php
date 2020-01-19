<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NoticeType extends Model
{
    public function notices() {
    	return $this->hasMany(Notice::class);
    }
}
