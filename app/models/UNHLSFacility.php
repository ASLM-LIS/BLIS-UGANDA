<?php

class UNHLSFacility extends Eloquent
{
	protected $table = "facilities";
	
	public function district()
	{
		return $this->belongsTo('District', 'district_id', 'id');
	}

	public function level()
	{
		return $this->belongsTo('UNHLSFacilityLevel', 'level_id', 'id');
	}

	public function ownership()
	{
		return $this->belongsTo('UNHLSFacilityOwnership', 'ownership_id', 'id');
	}

	public function bbincidence()
    {
        return $this->hasMany('Bbincidence','facility_id','id');
	}
	public function referral(){

		return $this->hasMany('Referral', 'facility_id');
	}
}