<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reimbursement extends Model
{
    protected $guarded = [];

    protected $appends = ['file_link'];

    /**
     * getting whole file link. 
    */
    public function getFileLinkAttribute($value='')
    {
    	return asset('uploads/Reimbursement/'.$this->attachement);
    }
}
