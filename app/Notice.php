<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    public function notice_type() {
    	return $this->belongsTo(NoticeType::class);
    }
}
