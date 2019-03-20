<?php

class Referral extends Eloquent 
{
    
    protected $table = 'referrals';
    public $timestamps = true;

    const REFERRED_IN = 0;
    const REFERRED_OUT = 1;

    public function user()
    {
        return $this->belongsTo('User');
    }

    public function unhlsFacility()
    {
    	return $this->belongsTo('UNHLSFacility', 'id');
    }

    public function getFacilityName(){
        $facilityName = DB::table('facilities')
                        ->where('id', '=', $this->facility_id)
                        ->get();
        $facilityName = json_decode(json_encode ($facilityName), true);

        return $facilityName[0]['name'];

    }

}